#!/bin/bash

# remove duplicate paths from path
export PATH=$(echo $PATH | perl -lpE '$_=join ":", grep { !$s{$_}++ } split /:/')
