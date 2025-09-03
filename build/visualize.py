import yt
from yt.frontends import boxlib
from yt.frontends.boxlib.data_structures import AMReXDataset

ds = AMReXDataset("plot")
#ds = yt.load("your_dataset")

sc = yt.create_scene(ds, field=('boxlib', 'phi'), lens_type="perspective")

source = sc[0]

sc.save("rendering.png")