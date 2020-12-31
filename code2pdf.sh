#!/bin/sh

IN=$1
filename=$(basename $IN)
mkdir -p $2/html
mkdir -p $2/pdf
HTML=$2/html/$filename.html
OUT=$2/pdf/$filename.pdf

pygmentize -O full,style=emacs,linenos=1 -o $HTML $IN
wkhtmltopdf --minimum-font-size 18 \
            --header-center "$filename" \
            --footer-right "Page [page] of [toPage]" \
            $HTML $OUT
