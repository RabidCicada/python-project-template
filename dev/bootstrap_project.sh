#!/usr/bin/env bash
pip install -r requirements.txt
mkdir -p ../docs ../src ../tests
pushd ../docs
sphinx-quickstart --sep --ext-autodoc --extensions pbr.sphinxext,sphinxcontrib.apidoc --makefile --batchfile --templatedir=../dev/sphinxtemplates
cp ../dev/sphinxtemplates/*.rst source/
popd
