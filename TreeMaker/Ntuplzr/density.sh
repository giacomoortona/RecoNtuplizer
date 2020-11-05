#!/bin/bash

cd /afs/cern.ch/user/g/gortona/work/Phase2/CMSSW_11_1_0_pre6/src/
eval $(scram ru -sh)
cmsenv
cd /afs/cern.ch/user/g/gortona/work/Phase2/CMSSW_11_1_0_pre6/src/TreeMaker/Ntuplzr/
python printDensity.py -s ${1} -t ${2} -p ${3} -g ${4}

#cmsRun test/myproduceNtuples_cfg.py maxEvents=-1 outputFile=file_condor_20721_${1}.root sampleSelect=${1}
