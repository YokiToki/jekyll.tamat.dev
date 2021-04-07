#!/bin/bash

jekyll build
rsync -av --progress _site/ _site-multilanguage/ --exclude en
rm -rf _site

git checkout languge/en
mkdir -p _site-multilanguage/en
jekyll build
rsync -av --progress _site/en _site-multilanguage

git checkout master
