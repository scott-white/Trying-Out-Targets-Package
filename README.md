# Trying Out Targets Package
 Used to try out the functionality of the {targets} R package.

## Key functions it exposed me to

###Interactive functions
- `use_targets`: Used to setup the `_targets.R` file.
  - **name**: Name of output/input object.
  - **command**: Code to run in this part of the pipeline. Good practice is a function call but can be anything.
  - **description**: Description of pipeline step.
- `tar_manifest`: Lists information about each target.
- `tar_visnetwork`: Visualized the pipeline.
- `tar_outdated`: Returns (as a string) which targets are outdated.
- `tar_make`: Runs the pipeline.
- `tar_read`: Reads the pipeline output.
- `tar_load` and `tar_load_everything`: Load all the `tar_target()` outputs into the indicated environment. Default is the global environment.


### `_targets.R` file functions.
- `tar_option_set`: Instruct what packages will be used by the functions called in the pipeline.
- `tar_source`: Used to source the *.R files containing the functions in the pipeline.
- `tar_target`: Key function. Used to run each step of the pipeline.


## Problems encountered in the project thus far

### Adding a step to output an image of the `tar_visnetwork` function

This step caused some issues while using the webshot2::webshot function. After running this function, the following error was produced:

```
Error in `with_random_port()`:
! Cannot find an available port. Please try again.
Caused by error in `startup()`:
! Failed to start chrome. Error: [17382:259:0621/002231.428453:ERROR:process_singleton_posix.cc(335)] Failed to create /Users/scott/Library/Application Support/Arc/User Data/SingletonLock: File exists (17)
[17382:259:0621/002231.428655:ERROR:chrome_main_delegate.cc(554)] Failed to create a ProcessSingleton for your profile directory. This means that running multiple instances would start multiple browser processes rather than opening a new window in the existing process. Aborting now to avoid profile corruption.
```

The eventual solution to this problem was to install the chrome webbrowser and then it worked as intended. Prior to installing chrome, the function `find_chrome` was unable to run the executable associated with the Arc browser (my Mac browser of choice) due to the SingletonLock file. That is a problem for another day.

