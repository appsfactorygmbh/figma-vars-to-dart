# Figma Variables to Dart

Bring your Figma design system and Flutter app implementation closer together by generating Dart code directly from Figma API.

### Which problem are we trying to solve?
* Figma codegen plugins for Flutter/Dart are limited
* There's manual interaction with Figma UI required and it takes time on bigger projects
* No easy way to detect which variables changed/updated without manual inspection

## Installation
```yaml
dev_dependencies:
  figma_vars_to_dart: ^0.1.0 
```
or 

```bash
flutter pub add figma_vars_to_dart --dev
```
## Commands
- [Figma Variables](#figma-variables)
- [Downloading Images](#downloading-images)

## Usage

### Create the token

In order to interact with Figma API you will need a personal access token. 
To create this token you can follow [this](https://help.figma.com/hc/en-us/articles/8085703771159-Manage-personal-access-token) figma tutorial.

### Figma Variables
Make sure your Figma project uses variables. 

<details>
  <summary>Sample inputs for the demo purposes</summary>

  ![Input 1](https://raw.githubusercontent.com/appsfactorygmbh/figma-vars-to-dart/main/images/figma_collection_1.png)
  ![Input 2](https://raw.githubusercontent.com/appsfactorygmbh/figma-vars-to-dart/main/images/figma_collection_2.png)
</details>

#### Run the command

```bash
dart pub run figma_vars_to_dart generate \
	 --token $FIGMA_TOKEN \
	 --fileId $YOUR_FIGMA_FILE_ID \ # you can find this string value in your file URL
	 --dartOutputFolder lib/shared/ui_constants \
	 --jsonOutputFile vars.json 
```

#### Use the code

<details>
  <summary>Generated files</summary>

`color_primitives.dart`
```dart
import 'package:flutter/widgets.dart';

class ColorPrimitives {
  final Color white;
  final Color pink;
  final Color green;
  final Color black;
  final Color blue;

  ColorPrimitives({
    required this.white,
    required this.pink,
    required this.green,
    required this.black,
    required this.blue,
  });

  factory ColorPrimitives.value() => ColorPrimitives(
        white: const Color(0xFFF2ECEC),
        pink: const Color(0xFFDD006A),
        green: const Color(0xFF8CC93E),
        black: const Color(0xFF2C2C2C),
        blue: const Color(0xFF3000F2),
      );
}

```
`color_semantics.dart`
```dart
import 'package:flutter/widgets.dart';
import 'ui_constants.dart';

class ColorSemantics {
  final Color background;
  final Color buttonPrimary;

  ColorSemantics({
    required this.background,
    required this.buttonPrimary,
  });

  factory ColorSemantics.light(ColorPrimitives colorPrimitives) =>
      ColorSemantics(
        background: colorPrimitives.white,
        buttonPrimary: colorPrimitives.blue,
      );

  factory ColorSemantics.dark(ColorPrimitives colorPrimitives) =>
      ColorSemantics(
        background: colorPrimitives.black,
        buttonPrimary: colorPrimitives.green,
      );
}
```

`ui_constants.dart`

```dart
export 'color_primitives.dart';
export 'color_semantics.dart';
```
</details>

You can use any state management you prefer to provide these values to your widgets.


#### Example
See the [example](https://github.com/appsfactorygmbh/figma-vars-to-dart/tree/main/example) for more information.

### Downloading Images
To use the download-images feature, create sections for specific use cases. Each section name must follow the format "APP_ASSET_$section", where $section represents a specific use case. Then, add the images you want to download and convert them into components.
<details>
  <summary>Sample for the demo purposes</summary>

  ![Input 3](https://raw.githubusercontent.com/appsfactorygmbh/figma-vars-to-dart/main/images/figma_section.png)
</details>

#### Run the command

```bash
dart pub run figma_vars_to_dart download-images \
	 --token $FIGMA_TOKEN \
	 --fileId $YOUR_FIGMA_FILE_ID 

```
#### Arguments 
| Argument         | Type    | Required | Default       | Description |
|------------------|---------|----------|---------------|-------------|
| `--fileId`       | String  | ✅ Yes   | None          | The **Figma file ID**, which can be found in the Figma file URL. |
| `--token`        | String  | ✅ Yes   | None          | Your **Figma personal access token** for authentication. |
| `--outputFolder` | String  | ❌ No    | `assets`      | The folder where downloaded images will be stored. Defaults to `assets/`. |
| `--format`       | String  | ❌ No    | `png`         | The format of the downloaded images. Allowed values: `jpg`, `png`, `svg`. |
| `--scale`        | String  | ❌ No    | `1.0,2.0,3.0` | The scales for downloaded images (comma-separated). Must be between **0.01 and 4.0**. **Note:** If the format is `svg`, this argument is ignored and set to `1.0`. |
| `--section`      | String  | ❌ No    | `null`        | Specify **Figma sections** to download (comma-separated). By default, all `APP_ASSET_$section` sections are considered. |
| `--force`        | Flag    | ❌ No    | `false`       | Forces downloading the images even if they already exist. |


## Contributing
Contributions are welcome! If you encounter issues, have feature suggestions, or want to improve the package, feel free to open an issue or submit a pull request. Please read our Contribution Guidelines for more information.

## License
This project is licensed under the MIT License.
