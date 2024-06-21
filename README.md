# Trying Out Targets Package
 Used to try out the functionality of the {targets} R package.

# Key functions it exposed me to

Interactive functions
- `use_targets`: Used to setup the `_targets.R` file.
- `tar_manifest`: Lists information about each target.
- `tar_visnetwork`: Visualized the pipeline.
- `tar_outdated`: Returns (as a string) which targets are outdated.
- `tar_make`: Runs the pipeline.
- `tar_read`: Reads the pipeline output.
- `tar_load` and `tar_load_everything`: Load all the `tar_target()` outputs into the indicated environment. Default is the global environment.


## `_targets.R` file functions.
- `tar_option_set`: Instruct what packages will be used by the functions called in the pipeline.
- `tar_source`: Used to source the *.R files containing the functions in the pipeline.
- `tar_target`: Key function. Used to run each step of the pipeline.
- 