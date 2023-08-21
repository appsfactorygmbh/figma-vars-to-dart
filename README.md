# Figma Variables to Dart

Bring your Figma design system and Flutter app implementation closer together by generating Dart code directly from Figma API.

### Which problem are we trying to solve?
* Figma codegen plugins for Flutter/Drat are limited
* There's manual interaction with Figma UI required and takes time on bigger projects
* No easy way to detect which variables changed/updated without manual inspection


## Installation
```yaml
dev_dependencies:
  figma_vars_to_dart: {latest version} 
  # for now you can use git dependency
```

## Usage

### Create the token

In order to interact with Figma API you will need a personal access token. 
To create this token you can follow [this](https://help.figma.com/hc/en-us/articles/8085703771159-Manage-personal-access-token) figma tutorial.

### Run the command

```bash
dart run figma_vars_to_dart \
	 --token $FIGMA_TOKEN \
	 --fileId $1 \
	 --dartOutputFolder lib/shared/design_constants \
	 --jsonOutputFile vars.json 
```


### Use the code
```dart
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

    factory ColorPrimitives.create() => ColorPrimitives(
        white: const Color(0xFFF2ECEC),
        pink: const Color(0xFFDD006A),
        green: const Color(0xFF8CC93E),
        black: const Color(0xFF2C2C2C),
        blue: const Color(0xFF3000F2),
      );
}
```
```dart
class ColorSemantics {
  final Color background;
  final Color buttonPrimary;

  ColorSemantics({
    required this.background,
    required this.buttonPrimary,
  });

  factory ColorSemantics.light(
    ColorPrimitives colorPrimitives,
  ) =>
      ColorSemantics(
        background: colorPrimitives.white,
        buttonPrimary: colorPrimitives.blue,
      );
  factory ColorSemantics.dark(
    ColorPrimitives colorPrimitives,
  ) =>
      ColorSemantics(
        background: colorPrimitives.black,
        buttonPrimary: colorPrimitives.green,
      );
}
```
## Example
See the [example](https://github.com/appsfactorygmbh/figma-vars-to-dart/tree/main/example) for more information.

## Contributing
Contributions are welcome! If you encounter issues, have feature suggestions, or want to improve the package, feel free to open an issue or submit a pull request. Please read our Contribution Guidelines for more information.

## License
This project is licensed under the MIT License.
