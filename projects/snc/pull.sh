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

echo "pulling: $path"

mkdir -p "/media/sf_projects/$path"
cd "/home/jan/projects/$path"


mkdir -p "/home/jan/projects/$path"
cd "/media/sf_projects/$path"

sudo rsync -avz --exclude-from='/home/jan/projects/snc/.pull_ignore' ./ "/home/jan/projects/$path"
