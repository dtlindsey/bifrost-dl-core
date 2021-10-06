# `dl_cache_by_hash`

Simple compound that will cache your *live_data* if your *out_hash* and *input_hash* are not equal.

## `Inputs`

### `input_hash`

Value you'd like to use as a simple hash identifier. (default is long)

### `live_data`

Data you want cached, and only updated if the hash changes (default is float)

## `Outputs`

### `cache_output`

Cached version of your *live_data* input

### `out_hash`

Cached version of your *input_hash* data
