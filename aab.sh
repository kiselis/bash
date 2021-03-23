#!/bin/bash

HTML_FILES=`find / -name "*.html" -print 2> /dev/null"
echo "$HTML_FILES" | grep "/index.html$"
echo "$HTML_FILES" | grep "/contents.html$"
