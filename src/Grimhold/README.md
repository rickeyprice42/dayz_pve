# Grimhold Mod Source

This folder stores the editable source for the `Grimhold` DayZ mod.

## Current scope

- Custom loading screen for the Grimhold server
- Base structure for future client and shared server features

## Current files

- `config.cpp`: mod registration and script module declaration
- `mod.cpp`: launcher metadata
- `Scripts/3_Game/LoadingScreen/GUI/LoadingScreen.c`: loading screen override
- `Scripts/Data/LoadingImages.json`: loading screen image list
- `Scripts/Data/Hints.json`: custom hint pages
- `GUI/LoadingScreens/*.paa`: packaged loading backgrounds
- `Data/LoadingScreen/*.png`: source artwork copied from `docs/loadingscreen`

## Important note about textures

The active loading screen uses packaged `.paa` textures from `GUI/LoadingScreens`.

Source art included in this repo:

- `grimhold_01.png`
- `grimhold_02.png`
- `grimhold_03.png`
- `grimhold_04.png`

The original art is kept in `Data/LoadingScreen`. The active packaged textures are:

- `GUI/LoadingScreens/grimhold_01.paa`
- `GUI/LoadingScreens/grimhold_02.paa`
- `GUI/LoadingScreens/grimhold_03.paa`
- `GUI/LoadingScreens/grimhold_04.paa`

DayZ Tools on this machine require power-of-two textures, so the current workflow pads the original `1536x1024` images to `2048x1024` before conversion.

## Suggested runtime layout after build

```text
@Grimhold
├── addons
│   ├── grimhold.pbo
│   └── grimhold.pbo.<your-signature>.bisign
├── keys
│   └── <your-key>.bikey
└── mod.cpp
```

## Server startup

After building and signing the mod, add `@Grimhold` to the server `-mod=` list in `start.bat`.

Do not enable it before the addon is built and signed.
