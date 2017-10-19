#!/bin/bash

# must be run from root of www/ and project..github.io must share same parent dir

wintersmith build

cp -R build/. ../project-ivi.github.io
