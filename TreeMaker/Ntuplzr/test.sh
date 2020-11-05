#!/bin/bash

cd /afs/cern.ch/user/g/gortona/work/Phase2/CMSSW_11_1_0_pre6/src/
eval $(scram ru -sh)
cmsenv
cd /afs/cern.ch/user/g/gortona/work/Phase2/CMSSW_11_1_0_pre6/src/TreeMaker/Ntuplzr/
cmsRun test/myproduceNtuples_cfg.py maxEvents=-1 outputFile=/eos/user/g/gortona/Phase2/file_condor_20915_${1}_${2}.root sampleSelect=${1} bunchNumber=${2}
