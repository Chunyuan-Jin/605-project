#!/bin/bash

condor_submit submit.sub

chmod u+x merge.sh
./merge.sh

Rscript sensor_test.R