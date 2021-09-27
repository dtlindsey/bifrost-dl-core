# `dl_get_vert_idx_from_face_array`

Useful utility compound to get a unique and sorted array of vert indices, given an array of face indices.

## `Inputs`

### `face_count`

Total number of faces in the array that is being passed in

### `face_ids`

<*array*<*uint*>> of the faces we will be getting vert indices from.

### `dl_mesh_object`

Any Bifrost polygon mesh object that has *face_vertex* and *face_offset* properties

## `Outputs`

### `vertex_ids`

<*array*<*uint*>> representing the vertex indices for the given input polygon mesh object

### `vertex_count`

Total number of verts in the array