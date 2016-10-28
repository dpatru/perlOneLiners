#!/bin/bash

# remove duplicate paths
echo $PATH | perl -lpE '$_=join ':', grep { !$s{$_}++ } split /:/'
