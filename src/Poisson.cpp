#include <AMReX.H>
#include <AMReX_MultiFab.H>
#include <AMReX_MLPoisson.H>
#include <AMReX_MLMG.H>
#include <AMReX_ParmParse.H>
#include <AMReX_Array.H>
#include <AMReX_PlotFileUtil.H>

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
    Array<int,AMREX_SPACEDIM> is_periodic{AMREX_D_DECL(1,1,1)};

    Geometry geom;
    geom.define(domain, real_box, coord, is_periodic);

    BoxArray ba(domain);
    ba.maxSize(max_grid_size);

    DistributionMapping dm(ba);

    MultiFab phi(ba, dm, n_comp, n_ghost);
    MultiFab rhs(ba, dm, n_comp, 0);
    
    phi.setVal(0.0);
    rhs.setVal(1.0);  // Example source term

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
