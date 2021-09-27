# `dl_magnet`

Deforms vertices by a given input matrix in one of two modes.  

ReplaceExisting: This mode overrides any deformation that happened previously

AppendOperator: This mode will add to whatever deformation that has happened previously.  This deformation is the *magnet* matrix relative to the *false_parent* matrix

## `Inputs`

### `dl_mesh_object`

The expected object to be passed in is the custom ***dl_mesh_object***.  There are properties used in this deformer that are created in a ***dl_mesh_object***.

### `active`

Boolean that determines if the deformer is being calculated or not.  If disabled, the original dl_mesh_object shape is passed as the output.

### `bind_frame`

Currently, Bifrost does not track what ports are dirtied.  In the mean time, we have to cache what frame we want the bind, verts to deform, and weights computed on.  This is not optimal, nor is it the final intent for this compound.

### `weight_multiplier`

Overall weight multiplier of the deformation.

## `Magnet`

### `deformation_mode`

Two operational modes.  ReplaceExisting (replaces any deformation by using the baseshape as a starting point) and AppendOpperator (additive defomration).

### `magnet`

Matrix that the deformation is computed against.  Deformation happens whenever the matrix is something other than identity.

### `false_parent`

*false_parent* matrix simulates a hierarchy relation to the *magnet*, where the *magnet* is the child, and the deformation is the different between *false_parent* and *magnet*

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
