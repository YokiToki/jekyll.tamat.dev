#!/bin/bash

jekyll build
mv _site/ _site-multilanguage/

git checkout languge/en
mkdir -p _site-multilanguage/en
jekyll build
cp -R _site/pages _site-multilanguage/en

git checkout master
