# Flutter Boilerplate

Run `flutter pub get` after cloning this repository.

## Modify app name and package name

To change your app name, run `scripts/change_app_name.sh {your app name}`.

To change your package name, run `scripts/change_package_name.sh {your package name}`.

## Packages

- **State Management**: flutter_riverpod
- **Dependency Injection**: flutter_riverpod
- **Remote API**: dio, retrofit
- **Logging**: logger
- **Functional Programming**: fpdart
- **ReactiveX**: rxdart
- **Animation**: flutter_animate
- **SVG Image**: flutter_svg
- **Utils**: path, path_provider

## Directory Structure

```sh
lib/
  config/ # global configuration files
    dependencies/ # dependency injections or overrides
  data/ # data layer
    local/ # local data implementation
    remote/ # remote data implementation
  domain/ # domain layer
    models/ # core models
    repositories/ # core repository interfaces - domain logics
    usecases/ # core usecases
  routing/ # routing settings
  ui/ # ui layer
    pages/ # screen page widgets
    widgets/ # common widgets
  utils/ # other utilities
main_unit_test.dart # test entry
main.dart # main entry
```

## Architecture
