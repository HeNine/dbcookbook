#!/bin/bash

# Create directories for new images
ls imgraw | xargs -I@ mkdir imglow/@

# Convert images to at most 1080px vertical and 75% JPEG quality
find imgraw -name *.jpg -printf '%P\n' | \
	xargs -I@ convert imgraw/@ -resize 'x1080>' -quality 75 imglow/@
