# `dl_compute_weight_table`

Compute a weight table for a given input mesh.  This will use deformGroups, allGroups, notGroups, and weightVolumes to determine the final weight of a vertex.

## `Inputs`

### `dl_mesh_object`

Input mesh that will be deformed.  This assumes using a dl_mesh_object.

### `weight_multiplier`

Overall multiplier for the final computed weights.

## `Deform Groups`

Using `*` as the input will use all faces in the mesh.

### `deform_groups`

Comma separated list of polygon groups that exist in the geometry as "deformGroups" property.  These are computed starting at 1.0 and having weight volumes applied to them to get the final weight value.  This is then multiplied by the weight_multiplier

### `full_groups`

Comma separated list of polygon groups that exist in the geometry as "deformGroups" property. These groups are always computed to a value of 1.0 * weight_multiplier.

### `not_groups`

Comma separated list of polygon groups that exist in the geometry as "deformGroups" property. These groups are always computed to 0.0

### `weight_volumes`

Animo::object array of weight_volume compounds.

## `Display`

### `weight_color`

Vector input of rgb values as a color for points to be drawn in.

### `display_weight`

Bool to activate debug drawing

### `point_size`

Float value of scale to draw the points

## Outputs

### `weight_table`

Array of float values (one for each vertex), representing the computed weight values.

### `draw_weights`

Debug mode to visual see your computed weight values.  Will draw points as discs at user input scale and color.