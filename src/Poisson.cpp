#include <AMReX.H>
#include <AMReX_MultiFab.H>
#include <AMReX_MLPoisson.H>
#include <AMReX_MLMG.H>
#include <AMReX_ParmParse.H>
#include <AMReX_Array.H>
#include <AMReX_PlotFileUtil.H>
#include <cmath>

using namespace amrex;

void main_main ()
{
    int n_cell = 64;
    int max_grid_size = 32;
    int n_ghost = 1;
    int n_comp = 1;

    IntVect dom_lo(0);
    IntVect dom_hi(n_cell-1);
    Box domain(dom_lo, dom_hi);
    RealBox real_box({AMREX_D_DECL(0.0, 0.0, 0.0)},
                    {AMREX_D_DECL(1.0, 1.0, 1.0)});
    int coord = 0; // Cartesian

    // set which dimensions are periodic (in this case, none)
    Array<int,AMREX_SPACEDIM> is_periodic{AMREX_D_DECL(0,0,0)};

    Geometry geom;
    geom.define(domain, real_box, coord, is_periodic);

    BoxArray ba(domain);
    ba.maxSize(max_grid_size);

    DistributionMapping dm(ba);

    MultiFab phi(ba, dm, n_comp, n_ghost);
    MultiFab rhs(ba, dm, n_comp, 0);
    
    // initial guess
    phi.setVal(0.0);

    // forcing function f(x, y) = -2sin(x)sin(y)
    for (MFIter mfi(rhs); mfi.isValid(); ++mfi)
    {
        const Box& bx = mfi.validbox();
        Array4<Real> arr = rhs.array(mfi);
        const auto dx = geom.CellSize();
        const auto prob_lo = geom.ProbLo();

        const IntVect& small = bx.smallEnd();
        const IntVect& big = bx.bigEnd();

        for (int j = small[1]; j <= big[1]; ++j)
        {
            for (int i = small[0]; i <= big[0]; ++i)
            {
                Real x = prob_lo[0] + (i + 0.5) * dx[0];
                Real y = prob_lo[1] + (j + 0.5) * dx[1];

                arr(i,j,0) = -2.0 * std::sin(x) * std::sin(y);
            }
        }
    }

    LPInfo info;
    info.setMaxCoarseningLevel(0);

    Vector<Geometry> geomVec = {geom};
    Vector<BoxArray> baVec = {ba};
    Vector<DistributionMapping> dmVec = {dm};

    MLPoisson mlpoisson(geomVec, baVec, dmVec, info);
    mlpoisson.setDomainBC({AMREX_D_DECL(LinOpBCType::Dirichlet,
                                        LinOpBCType::Dirichlet,
                                        LinOpBCType::Dirichlet)},
                        {AMREX_D_DECL(LinOpBCType::Dirichlet,
                                        LinOpBCType::Dirichlet,
                                        LinOpBCType::Dirichlet)});

    mlpoisson.setLevelBC(0, nullptr);  // No coarse-fine BC since no AMR here
    //mlpoisson.setSigma(0, 1.0);        // Coefficient for Laplacian

    MLMG mlmg(mlpoisson);
    mlmg.setVerbose(1);                // Print info

    mlmg.solve({&phi}, {&rhs}, 1e-10, 1e-10);

    WriteSingleLevelPlotfile("plot", phi, {"phi"}, geom, 0.0, 0);
}

int main(int argc, char* argv[]) {
    amrex::Initialize(argc, argv);
    
    main_main();

    amrex::Finalize();
}
