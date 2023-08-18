set -e

# To create your own token go to Account => Personal Access Tokens section in Figma 

rm -rf lib/shared/ui_constants
results_folder=lib/shared/ui_constants

dart run figma_vars_to_dart \
	 --token $FIGMA_TOKEN \
	 --fileId $1 \
	 --dartOutputFolder $results_folder \
	 --jsonOutputFile vars.json 

dart fix --apply $results_folder
dart format $results_folder
