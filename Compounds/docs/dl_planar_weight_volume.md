# `dl_planar_weight_volume`

This is an infinite y/z plane that can be used to define a weighting influence on a deformer.  The min_falloff (1.0) and max_falloff (0.0) values of the plane run along the x-axis. 

## `Inputs`

### `input_matrix`

This is the matrix that will drive to position of the weight_volume

### `min_falloff`

The position where falloff from 1.0 is least, meaning everything before this is a value of 1.0

### `max_falloff`

The position where falloff from 1.0 is the most, meaning everything after this is a value of 0.0

### `sizeA`

The overall size of the plane in y/z (Mostly used for making the icon larger for display purposes).

### `apply_mode`

Weight application mode (Replace, Multiple, Add).  As these are used in arrays for deformers, this application mode becomes important when multiples are assigned to a given deformer, as they are computed in order in the array. 

### `weight_falloff`

Defines the falloff curve between the min/max falloff.

### `use_current_positions`

Boolean to define if the weight volume computes against the current vertex positions, or the baseshape positions

## `Outputs`

### `weight_volume`

Amino::Object with custom properties