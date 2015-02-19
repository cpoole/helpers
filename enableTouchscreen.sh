#!/bin/bash

if [ $1 == "enable" ]
then
  xinput --enable "eGalax Inc. eGalaxTouch EXC7903-18v01_Test5"
else
  xinput --disable "eGalax Inc. eGalaxTouch EXC7903-18v01_Test5"
fi
