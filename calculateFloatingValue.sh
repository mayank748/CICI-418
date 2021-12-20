#! /bin/bash/ -x

calc() { awk "BEGIN{print $*}"; }
echo `calc 22/7`
