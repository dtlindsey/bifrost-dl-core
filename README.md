![logo](media/dl_core_icon.png)
# *bifrost-dl-core*

The hope for this open source project, is that it will expand the style of character rigging that was the backbone of the Rhythm and Hues studio that helped make it the character house that it was.  The indirect deformation methods may take a some time to get used to but in my opinion, is a superior method than vertex painting.

This is built around using Autodesk Bifrost and contains a number of compounds that can be used to build other compounds.  I decided to start working in Bifrost, as this already gives users in multiple Autodesk applications access to the same rigging procedures, which has been long overdue in our industry.  Hopefully Bifrost will continue to grow, and hook into many other applications.

## Baseline and Requirements

### ****** `UPDATED` *****

Example files and test files are Maya 2022 files now.

Bifrost 2.3.0 or greater

### ***** `Removed dependencies` *****

Rebel pack is no longer required.

### ***** `Possible Breakage` *****

`dl_mesh_object` - deform_group_names and deform_group_face_ids have been defaulted to "fan_in", so connections may break.

`dl_magnet` - added custom magnet modes, compound may need to be re-created

`dl_planar/sphere_weight_volume` - added custom apply modes, compounds may need to be re-created


### ***** `In Development` *****

`Group Manager:` This is a basic UI to help create polygon groups/sets within Maya.  There are issues with this still and it's still in progress.

`dl_mush:` This compound technically "works", however; it's very slow to compute.

`dl_morph:` Technically works, but needs to love to make it better.

`dl_blend_deform:` Currently, does not support progressive/sequential shapes, all shapes are currently linear interp, even if spline is selected.

`dl_mesh_object:` New Blendshape workflow is in progress, progressive shapes are not explicitly supported right now.

## Repo Structure

### `Compounds`

This is the Bifrost Compounds library.  

Append your BIFROST_LIB_CONFIG_FILES variable to point to the plugin_config.json file

### `maya`

#### `example_files`

This is where the Maya scripts and example files live.  These are Maya 2019 files.

1. `basic_deformer_setup.ma:` This is a basic graph showing how you can create groups on a mesh, and use those groups, as well as a weight volume to drive a deformer.

2. `multi_res_geom.mb:` This file has 4 resoltions of Maya geometry in it.  They have poly faces assigned to selection sets, and the included *group_utils.build_group_attrs* was used to generate attributes on the geometry.  There are 2 graphs in this file. *step_1* is used to illustrate how you can write the geom to disk. *step_2* is used to illustrate how you can read that geometry off disk, and on demand change the resolution by selecting which geom index you want to display.

3. `dl_mesh_object_blends_example.ma:` This file illustrates how to create a *dl_mesh_object* with blendshapes, and how to access them through the *dl_blend_deform* compound.

#### `python`

Append your PYTHONPATH in maya to point to the python directory in here.\
Example: Create deform groups to use in Bifrost on a given meshes in your file.

Create selection sets, with polygons from your mesh in them.

`import dl_bifrost_utils`\
`dl_bifrost_utils.group_utils.build_group_attrs()`

This will create attributes on your geometry's transform.

Example: Create polygon selection sets with a UI.

`import dl_bifrost_utils`\
`d = dl_bifrost_utils.ui.dl_group_manager_ui.GroupManager()`

This will bring up a UI to create, merge, remove, grow and shrink polygon faces from a given set.

## Development Board and Issues

[dl-core/main project](https://github.com/dtlindsey/bifrost-dl-core/projects/1) - *This is where I will organize issues to work on*

[dl-core/issue tracking](https://github.com/dtlindsey/bifrost-dl-core/issues) - *This is where new issues should be created*

## License

I tried to make sure this package is as free and open for use as possible, so I'm using the MIT license.  If there are questions, please contact me about license questions.




