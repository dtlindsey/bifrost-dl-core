# `dl_build_deform_groups_from_string_array`

Creates two arrays from an input string array.  Each element in the array is expected to be formatted

***"{string}:{uint},{uint},{uint},{uint},{uint},..,.."***

***{string}*** = The name of the groups (e.g. allDeform)

***{int}*** = face index belonging to the group

This is a hack way to bring selection set data into Bifrost, by creating a string attr that gets passed in with the data needed.

Example:

["allDeform:1,2,3,4,5,6,7","halfDeform:1,2,3,4,5"]

will result in output 

deform_groups: ["allDeform","halfDeform"]

face_idx: [[1,2,3,4,5,6,7],[1,2,3,4,5]]

This is a useful input when using a ***dl_mesh_object***

## `Inputs`

### `string_array`

Input string array, containing as many 

**<<"{string}:{uint},{uint},{uint},{uint},{uint},..,..",
"{string}:{uint},{uint},{uint},{uint},{uint},..,..",...>>**

***{string}*** = The name of the groups (e.g. allDeform)

***:*** = This is the separator used to get the group name from face indices

***{uint}*** = face index belonging to the group

### `array_size`

Size of the input string array

## `Outputs`

### `deform_groups`

An array of strings, each element is the ***{string}*** element from the input

### `face_idx`

An <*array*<*array*<*uint*>>>, represents the face indices mapped to each group index
