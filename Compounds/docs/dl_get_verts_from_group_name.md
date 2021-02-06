# `dl_get_verts_from_group_name`

Utility compound used in a handful of other dl_core compounds.  Given group names, that exists in a ***dl_mesh_object***, returned value will be an <*array*<*uint*>> representing the vert ids in the group.  

This is achieved by walking from group name->face indices->vert indices

## `Inputs`

### `dl_mesh_object`

***dl_mesh_object*** has properties that are used for this search.  

### `deform_groups`

Comma separated list of deform_groups, that exist in the ***dl_mesh_object***

## `Outputs`

### `vertex_ids`

A sorted <*array*<*uint*>> of all the vertices found in all the groups supplied.

### `vertex_count`

Total number of vertices in the array
