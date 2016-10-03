push:
	rsync --update --progress -a docs/* zadigh@www.lamadon.com:/home/zadigh/econ34430.lamadon.com

compile:
	R -e 