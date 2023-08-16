#!/bin/bash

path="$1"
while getopts ":a" option; do
  case $option in
    a)
      echo "option found"
      path="no arg option"
      ;;
    *)
      echo "else"
      echo "$1"
      ;;
  esac
done

echo "$path"
