#!/bin/bash
FILES=pdf/*
for f in $FILES
do
  inkscape -l "$f.svg" "$f"
done
