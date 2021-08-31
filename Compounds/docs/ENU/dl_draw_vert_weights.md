# `dl_draw_vert_weights`

A simple debug terminal that will use point scope on a baseshape or currentshape input object to display a weight value by vertex.  This is a useful utility node to use in a custom deformer compound.

## `Intput`

### `currentshape_object`

Mesh object that represents the current shape of a deformed mesh.

### `baseshape_object`

Mesh object that represents the base shape (or original shape) of a deformed mesh.

### `weight_array`

Input array of floats. Each float index representing the weight value of the vertex with the matching index number.

### `weight_color`

Color that will be displayed when the weight value is 1.0 (a weight value of 0.0 will be presented as black).

### `point_size`

Diameter of the point discs that will be drawn

### `display_current_positions`

Boolean that will toggle between drawing currentshape and baseshape positions