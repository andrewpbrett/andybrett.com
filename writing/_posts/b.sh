#!/bin/bash
regex="_"
for i in *; do
  if [[ $i =~ '-bookmark-' ]]
  then 
    mv $i ../reading/_posts/
  else
    mv $i ../writing/_posts/
  fi
done
