#!/bin/bash
echo Pre-build ...

# shellcheck disable=SC2103
flutter clean

flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

echo \[Completed\] pre-build!!!
