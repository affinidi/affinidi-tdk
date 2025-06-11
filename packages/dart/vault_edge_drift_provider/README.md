A package to persist and retrieve Profiles, Credentials Info and File Info with a Drift database

## Features

* Create a new profile
* Update an existing profile
* Delete an existing profile
* List all the available profiles


## Additional information

The package uses drift code generation.
To regenerate database classes run:

```bash
dart run build_runner build --delete-conflicting-outputs
```