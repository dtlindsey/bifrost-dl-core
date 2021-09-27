# `dl_xform`

xform compound that creates a matrix in space

## `Inputs`

### `active`

Boolean that sets the xform to return either computed matrix, or identity if set to off

### `inParentMatrix`

Matrix that represents the parent of the xform.

### `inPivotMatrix`

Matrix that represents the initial position of our xform.  This will position the xform in space, but keep the output identity.

### `inLocalMatrix`

Matrix that represents the local transformation of the xform.

## `SRT Values`

### `useSRT`

Boolean to determine if user would like to use srt values instead of *inLocalMatrix*

### `rotationOrder`

Determines the rotation order calculated for the rotation values

### `scale`

Scale

### `rotate`

Rotation

### `translate`

Translation

## `Outputs`

### `out_xform`

Amino::Object that contains all the following outputs and properties

### `deform_matrix`

Computed matrix output, taking into account inParentMatrix and using the inPivotMatrix as the initial position in space as identity, and the inLocalMatrix

### `parent_matrix`

Equal to the *inParentMatrix*

### `pivot_matrix`

Equal to the *inPivotMatrix*

### `local_matrix`

Equal to the *inLocalMatrix* or the computed SRTMatrix

### `world_matrix`

Computed world matrix