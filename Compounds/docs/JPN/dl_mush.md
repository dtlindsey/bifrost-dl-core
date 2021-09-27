# `dl_mush`

A basic deformer that offsets the vertices position, by a given offset, down the direction of the vertex normal

## `Inputs`

### `dl_mesh_object`

The expected object to be passed in is the custom ***dl_mesh_object***.  There are properties used in this deformer that are created in a ***dl_mesh_object***.

### `active`

Boolean that determines if the deformer is being calculated or not.  If disabled, the original dl_mesh_object shape is passed as the output.

### `bind_frame`

Currently, Bifrost does not track what ports are dirtied.  In the mean time, we have to cache what frame we want the bind, verts to deform, and weights computed on.  This is not optimal, nor is it the final intent for this compound.

### `weight_multiplier`

Overall weight multiplier of the deformation.

## `Mush`

### `mush_mode`

***Positional:*** Positional average based on connected verts

***Delta:*** Custom smooth operation that only smooths out the deformations happening on the mesh

### `mush_iters`

Number of point averaging iterations

### `weight_by_distance`

Weight the average computation by the connected points, closer will have higher weight influence

## `Deform Groups`

Comma separated string of groups names, that exist in the input ***dl_mesh_object***.  These groups will limit the number of vertices that will be calculated for the deformation to only the ones contained in the listed groups.  

### `deform_groups`

Groups that will be computed against the input *weight_volumes*.

### `full_groups`

Groups that will be set to a weight value of 1.0, regardless of their computed weight values.

### `not_groups`

Groups that will be set to a weight value of 0.0, regardless of their computed weight value

### `weight_volumes`

An array of ***dl_weight_volume*** compounds, each of which are computed in the order they are in the array

## `Weight Display`

### `weight_color`

The user defined color a weight value of 1.0 will display as.  0.0 will always display as black.

### `point_size`

Diameter of the point discs that will be drawn

### `display_current_positions`

Boolean that will toggle between drawing currentshape and baseshape positions.  Using a baseshape display is useful when adjusting *weight_volumes*
