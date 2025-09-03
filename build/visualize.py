import yt
from yt.frontends.boxlib.data_structures import AMReXDataset

ds = yt.load("build/plot")

# Create a top-down slice in the z-direction
slc = yt.SlicePlot(ds, 'z', ('boxlib', 'phi'))

# Use a color map and log or linear scale
slc.set_cmap(('boxlib', 'phi'), 'viridis')  # or 'plasma', 'inferno', etc.
slc.set_log(('boxlib', 'phi'), False)       # set to True if your data spans orders of magnitude

# Save the plot to file
slc.save("phi_slice_topdown.png")