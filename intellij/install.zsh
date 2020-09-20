#!/bin/sh
# Source from https://gist.github.com/dotCipher/9c5f7647bda088fde5dc561cc121b0a5
# Determine where intellij is installed
DEFAULT_IDEA_TOOLBOX_LOCATION=$(ls -1d ~/Library/Application\ Support/JetBrains/Toolbox/apps/*/*/*/IntelliJ\ IDEA.app 2>&1 | tail -n1)
DEFAULT_IDEA_LOCATION=$(ls -1d /Applications/IntelliJ\ IDEA.app 2>&1 | tail -n1)

IDEA=""
if [[ $DEFAULT_IDEA_TOOLBOX_LOCATION = *"No such file or directory"* ]]; then
	IDEA="$DEFAULT_IDEA_LOCATION"
elif [[ $DEFAULT_IDEA_LOCAITON = *"No such file or directory"* ]]; then
	echo "No intellij installation found, cannot proceed"
	exit 1
else
	IDEA="$DEFAULT_IDEA_TOOLBOX_LOCATION"
fi

# Check current working directory
wd=""
if [ -z "$1" ]; then
	wd=$(pwd)
elif [ -d "$1" ]; then
	wd=$(ls -1d "$1" 2>&1 | head -n1)
fi

# Check if we were given a file
if [ -f "$1" ]; then
	open -a "$IDEA" "$1"
else
	# Check working directory
	pushd $wd > /dev/null

	if [ -d ".idea" ]; then
		# Handle .idea folders
		open -a "$IDEA" .
	elif [ -f *.ipr ]; then
		# Handle idea project files
		open -a "$IDEA" `ls -1d *.ipr | head -n1`
	elif [ -f pom.xml ]; then
		# Handle pom.xml
		open -a "$IDEA" "pom.xml"
	else
		# Can't do anything else, just open Intellij
		open "$IDEA"
	fi

	popd > /dev/null
fi
#!/bin/sh

# Determine where intellij is installed
DEFAULT_IDEA_TOOLBOX_LOCATION=$(ls -1d ~/Library/Application\ Support/JetBrains/Toolbox/apps/*/*/*/IntelliJ\ IDEA.app 2>&1 | tail -n1)
DEFAULT_IDEA_LOCATION=$(ls -1d /Applications/IntelliJ\ IDEA.app 2>&1 | tail -n1)

IDEA=""
if [[ $DEFAULT_IDEA_TOOLBOX_LOCATION = *"No such file or directory"* ]]; then
	IDEA="$DEFAULT_IDEA_LOCATION"
elif [[ $DEFAULT_IDEA_LOCAITON = *"No such file or directory"* ]]; then
	echo "No intellij installation found, cannot proceed"
	exit 1
else
	IDEA="$DEFAULT_IDEA_TOOLBOX_LOCATION"
fi

# Check current working directory
wd=""
if [ -z "$1" ]; then
	wd=$(pwd)
elif [ -d "$1" ]; then
	wd=$(ls -1d "$1" 2>&1 | head -n1)
fi

# Check if we were given a file
if [ -f "$1" ]; then
	open -a "$IDEA" "$1"
else
	# Check working directory
	pushd $wd > /dev/null

	if [ -d ".idea" ]; then
		# Handle .idea folders
		open -a "$IDEA" .
	elif [ -f *.ipr ]; then
		# Handle idea project files
		open -a "$IDEA" `ls -1d *.ipr | head -n1`
	elif [ -f pom.xml ]; then
		# Handle pom.xml
		open -a "$IDEA" "pom.xml"
	else
		# Can't do anything else, just open Intellij
		open "$IDEA"
	fi

	popd > /dev/null
fi
