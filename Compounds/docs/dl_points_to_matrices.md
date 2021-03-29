# `dl_points_to_matrices`

Returns a matrix for every point position passed in

## `Inputs`

### `point_position`

point_positions to create matrices from

### `point_normals`

point_normals used to create the rotation portion of the matrices

### `position_indices`

array[uint] for each position we're going to create a matrix for

### `neighbor_array`

array[array[uint]] connected/neighboring points for each point

### `transpose_matrix`

bool that will transpose the matrices created

## `Outputs`

### `out_matrices`

Matrix for each position passed in.  This is a full rotation and translation matrix.
