#!/bin/bash

# docker run -it --rm -p 8888:8888 validator/validator:latest
# curl -F doc=web_formatted/home.html ZH:8888
# The above does not work; it will show false positives.
# Waiting on learning about a better automated html validator

DIR=$(dirname $(readlink -f $0))

for filename in $DIR/*.md; do

  [ -e "$filename" ] || continue

  pandoc ${filename} -s \
    -c https://cdn.simplecss.org/simple.min.css \
    -o ${filename%.md}.html
done

echo "files are formatted for the web"
exit 0
