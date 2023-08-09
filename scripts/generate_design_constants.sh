set -e

# To create your own token go to Account => Personal Access Tokens section in Figma 


rm -rf lib/figma

dart bin/figma_vars_to_dart.dart \
	 --token $FIGMA_TOKEN \
	 --fileId $1 \
	 --dartOutputFolder lib/figma \
	 --jsonOutputFile vars.json 

dart fix --apply lib/figma
dart format lib/figma
