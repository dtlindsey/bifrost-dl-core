# `dl_points_to_matrices`

Returns a matrix for every point position passed in

## `Inputs`

### `point_position`

all point_positions used to create the matrices

### `point_normals`

all point_normals used to create the rotation portion of the matrices

### `position_indices`

array[uint] matrices will only be created for positions at these indices

### `neighbor_array`

array[array[uint]] connected/neighboring points for each point, this is why we need all the point_positions

### `transpose_matrix`

bool that will transpose the matrices created

## `Outputs`

### `out_matrices`

Matrix for each position index passed in.  This is a full rotation and translation matrix.
