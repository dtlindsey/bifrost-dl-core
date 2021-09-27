# `dl_get_face_idx_from_group_name`

Utility compound to find the face indices from a given group names. Groups are expected to be separated by commas.

## `Inputs`

### `dl_mesh_object`

***dl_mesh_object*** has properties that are used for this search.  

### `deform_groups`

Comma separated list of deform_groups, that exist in the ***dl_mesh_object***

## `Outputs`

### `face_ids`

A sorted <*array*<*uint*>> of all the faces found in all the groups supplied.

### `face_count`

Total number of faces in the array