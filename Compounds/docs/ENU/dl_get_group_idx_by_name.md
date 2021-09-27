# `dl_get_group_idx_by_name`

Utility compound that will extract the index of each group, from the *deformGroups* property.

Example: Assuming these groups ***[allDeform, leftDeform, rightDeform]*** exist in the ***dl_mesh_object***

*deform_groups* input of ***leftDeform,rightDeform*** would return ***[1,2]***

## `Inputs`

### `dl_mesh_object`

***dl_mesh_object*** has properties that are used for this search.

### `deform_groups`

Comma separated list of deform_groups, that exist in the ***dl_mesh_object***

## `Outputs`

### `groups_ids`

A sorted <*array*<*uint*>> of all groups found in the deform_groups property of the ***dl_mesh_object***.

### `group_count`

Total number of groups in the array