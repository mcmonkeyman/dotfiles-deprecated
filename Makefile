default: limited_update

full_update:
	script/bootstrap
~/
limited_update:
	# Install macOS defaults, homebrew, brews and install scripts 
	bin/dot
