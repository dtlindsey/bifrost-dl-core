# `dl_mesh_object`

Custom polygon mesh object that stores a few additional properties.

*baseshape*\
*parent_matrix*\
*deform_groups*\
*deform_groups_face_ids*\
*point_neighbors*\
\
If blendshapes on in the geometry\
*blends*\
*blend_offsets*

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

## `blendshapes`

### `blend_names`

*array*<*string*> The user readable names of your blendshapes.  The order is expected to match the order of the blendshape objects.

### `blendshapes`

*array*<*Amino::Object*> This is the array of objects (or blendshapes) that have been created in Maya, based on the original mesh used for this dl_mesh_object.\
There is nothing clever going on to reorder verts or anything like that.  It's assumed the original shape and the blendshapes vert orders and counts match.

## `Outputs`

### `object`

New Amino::object with addition properties

### `vertex_count`

Number of verts in the mesh

### `face_count`

Number of faces in the mesh