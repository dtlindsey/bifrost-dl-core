![logo](media/dl_core_icon.png)
# *bifrost-dl-core*

The hope for this open source project, is that it will expand the style of character rigging that was the backbone of the Rhythm and Hues studio that helped make it the character house that it was.  The indirect deformation methods may take a some time to get used to but in my opinion, is a superior method than vertex painting.

This is built around using Autodesk Bifrost and contains a number of compounds that can be used to build other compounds.  I decided to start working in Bifrost, as this already gives users in multiple Autodesk applications access to the same rigging procedures, which has been long overdue in our industry.  Hopefully Bifrost will continue to grow, and hook into many other applications.

## Baseline and Requirements

Tested in Maya 2019 and using Bifrost 2.2.0

Rebel Pack needed, currently using 0.4.0

https://area.autodesk.com/downloads/rebel-pack-040/

## Repo Structure

### `Compounds`

This is the Bifrost Compounds library.  

Append your BIFROST_LIB_CONFIG_FILES variable to point to the plugin_config.json file

### `maya`

#### `example_files`

This is where the Maya scripts and example files live.  These are Maya 2019 files.

1. `basic_deformer_setup.ma:` This is a basic graph showing how you can create groups on a mesh, and use those groups, as well as a weight volume to drive a deformer.

2. `multi_res_geom.mb:` This file has 4 resoltions of Maya geometry in it.  They have poly faces assigned to selection sets, and the included *group_utils.build_group_attrs* was used to generate attributes on the geometry.  There are 2 graphs in this file. *step_1* is used to illustrate how you can write the geom to disk. *step_2* is used to illustrate how you can read that geometry off disk, and on demand change the resolution by selecting which geom index you want to display.

#### `python`

Append your PYTHONPATH in maya to point to the python directory in here.

## Development Board

[dl-core-main project](https://github.com/dtlindsey/bifrost-dl-core/projects/1)


## License

I tried to make sure this package is as free and open for use as possible, so I'm using the MIT license.  If there are questions, please contact me about license questions.




