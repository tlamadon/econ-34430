push:
	rsync -ua --checksum  docs/* zadigh@www.lamadon.com:/home/zadigh/econ34430.lamadon.com

compile:
	R -e 