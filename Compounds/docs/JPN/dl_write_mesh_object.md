# `dl_mesh_object`

Custom polygon mesh object that stores a few additional properties.

*baseshape*, *parent_matrix*, *deform_groups*, *deform_groups_face_ids*

## `Inputs`

### `original_object`

polygon mesh object

## `local_space`

### `convert_to_local_space`

Boolean that will apply the inverse parent matrix to the verts.

### `parent_matrix`

Matrix the geometry is parented to

## `face_groups`

### `deform_groups_names`

<*array*<*string*>> names of polygon groups, each index should have a matching *deform_group_face_ids* index.

### `deform_groups_face_ids`

<*array*<*array*<*uint*>>>, each index is an <*array*<*uint*>> that represent the faces contained in the deform group.

## `Outputs`

### `object`

New Amino::object with addition properties

### `vertex_count`

Number of verts in the mesh

### `face_count`

Number of faces in the mesh