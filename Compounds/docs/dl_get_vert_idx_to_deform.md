# `dl_get_vert_idx_to_deform`

Useful utility node for any deformer that will be utilizing groups as an input.

## `Inputs`

### `dl_mesh_object`

***dl_mesh_object*** has properties that are used for this search.  

### `deform_groups`

Comma separated list of deform_groups, that exist in the ***dl_mesh_object***.  These verts will be added to the output array.

### `full_groups`

Comma separated list of deform_groups, that exist in the ***dl_mesh_object***.  These verts will also be added to the output array.

### `not_groups`

Comma separated list of deform_groups, that exist in the ***dl_mesh_object***.  These verts will be removed from the output array.

## `Outputs`

### `verts_to_deform`

<*array*<*uint*>> of vertex ids. deform_group verts + full_group verts - not_group verts.

### `deform_group_verts`

<*array*<*uint*>> of vert idx in the deform_groups

### `full_group_verts`

<*array*<*uint*>> of vert idx in the full_groups

### `not_group_verts`

<*array*<*uint*>> of vert idx in the not_groups