#!/bin/bash
if [ -z "$1" ] 
then
  echo "You need to specify the changes to commit as an argument"
  exit 1
else
  git add -A
  git commit --amend -m "$1"
  git push --force
  hugo
  cd public
  git add -A
  git commit --amend -m "$1"
  git push --force
fi