#!/usr/bin/env bash

#Check for stripbootstrap command
if [ ! -z "$1" ]; then
  if [ "$1" = "stripbootstrap" ]; then
    rm -rf ./sphinxtemplates
    rm -rf ../.git
    rm ./bootstrap_project.sh
  fi
else
#Do normal bootstrap
  pip install -r requirements.txt
  mkdir -p ../docs ../src ../tests
  pushd ../docs
  sphinx-quickstart --sep --ext-autodoc --extensions pbr.sphinxext,sphinxcontrib.apidoc --makefile --batchfile --templatedir=../dev/sphinxtemplates
  cp ../dev/sphinxtemplates/*.rst source/
  popd
fi
