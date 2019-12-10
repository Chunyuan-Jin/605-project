#!/bin/bash

condor_submit submit.sub

chmod a+x merge.sh
./merge.sh

Rscript sensor_test.R
