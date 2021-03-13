# `dl_sphere_weight_volume`

This is an adjustable spheroid that can be used to define a weighting influence on a deformer.  The min_falloff (1.0) and max_falloff (0.0) values are defined by the spheroid shape. 

## `Inputs`

### `input_matrix`

This is the matrix that will drive to position of the weight_volume

### `min_falloff`

The position where falloff from 1.0 is least, meaning everything within this is a value of 1.0 if min is less than max, or everything beyond is a value of 1.0 if min is greater than max.

### `max_falloff`

The position where falloff from 1.0 is the most, meaning everything beyond this is a value of 0.0 if min is less than max, or everything is a value of 0.0 within this if min is greater than max. 

### `sizeA`

The overall size of the plane in y/z (Mostly used for making the icon larger for display purposes).

### `apply_mode`

Weight application mode (Multiply, Add, Subtract, Replace, Max [max of 1.0]).  As these are used in arrays for deformers, this application mode becomes important when multiples are assigned to a given deformer, as they are computed in order in the array. 

### `weight_falloff`

Defines the falloff curve between the min/max falloff.

### `use_current_positions`

Boolean to define if the weight volume computes against the current vertex positions, or the baseshape positions

## `SphereShape`

### `sizeX`

Scale value of the spheroid only in x-axis

### `sizeY`

Scale value of the spheroid only in y-axis

### `sizeZ`

Scale value of the spheroid only in z-axis

### `sizeXpos`

Scale value of the spheroid only in positive x-axis

### `sizeXneg`

Scale value of the spheroid only in negative x-axis

### `sizeYpos`

Scale value of the spheroid only in positive y-axis

### `sizeYneg`

Scale value of the spheroid only in negative y-axis

### `sizeZpos`

Scale value of the spheroid only in positive z-axis

### `sizeZneg`

Scale value of the spheroid only in negative z-axis

## `Outputs`

### `weight_volume`

Amino::Object with custom properties