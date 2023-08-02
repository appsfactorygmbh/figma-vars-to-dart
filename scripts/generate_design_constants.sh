set -e

# To create your own token go to Account => Personal Access Tokens section in Figma 
rm -rf lib/gen
dart bin/figma_variables_to_dart.dart \
	 --token $FIGMA_TOKEN \
	 --fileId $FIGMA_FILE \
	 --jsonOutput vars.json 
# rm lib/gen/tokens.dart
dart fix lib/gen
dart format lib/gen
