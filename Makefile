default: limited_update

bootstrap:
	script/bootstrap

full_update:
	bin/dot

limited_update:
	script/install
