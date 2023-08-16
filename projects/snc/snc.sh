#!/bin/bash

path="$1"
while getopts ":u" option; do
  case $option in
    u)
      path="UTOPIA/UTOPIA/UTOPIA/Source"
      ;;
    *)
      echo "alias not found"
      ;;
  esac
done

echo "syncing: $path"

mkdir -p "/media/sf_projects/$path"
cd "/home/jan/projects/$path"

rsync -avz --exclude-from='/home/jan/projects/snc/.snc_ignore' --delete ./ "/media/sf_projects/$path"
