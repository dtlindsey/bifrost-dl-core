# `dl_compute_deformer_weights`

Useful utility compound that can be used in any deformer to compute weights dynamically

## `Inputs`

### `weight_multiplier`

Overall multiplier on the computed weight values (e.g. 0.5 will multiply all values in computed array by 0.5)

## `Deform Groups`

### `deform_group_vert_idx`

All the vertices that are intended by be evaluated by the weight volumes

### `full_group_vert_idx`

All the vertices that are intended to be overridden with a value of 1.0

### `not_group_vert_idx`

All the vertices that are intended to be overridden with a value of 0.0

### `weight_volumes`

An array of ***dl_weight_volume*** compounds, each of which are computed in the order they are in the array

## `Shapes`

### `baseshape_point_positions`

The original or *baseshape* point_positions of the deformer's input mesh

The *baseshape* is a property accessible on a ***dl_mesh_object***

### `currentshape_point_positions`

The current point_positions of the deformer's input mesh object

## `Addition Inputs`

### `bind_frame`

Currently, Bifrost does not track what ports are dirtied.  In the mean time, we have to cache what frame we want weights computed on.  This is not optimal, nor is it the final intent for this compound, as you should be able to animated your input weight volumes, and only those should be updating the weight values. 