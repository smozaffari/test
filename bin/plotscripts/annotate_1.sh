#!/bin/bash
scriptName=$(basename ${0})
echo $scriptName
scriptName=${scriptName%\.sh}
echo $scriptName
scriptDir=$(readlink -f "$(dirname "$0")")
echo $scriptDir

timeTag=$(date "+%y_%m_%d_%H_%M_%S")

setup_log=${scriptName}_${LOGNAME}_${timeTag}.log
echo $setup_log
echo "RUNNING $scriptName as " $(readlink -f $0 ) " on " `date`  | tee  $setup_log


PHENO="fev1"
PATH="/group/ober-resources/users/smozaffari/POGWAS/data/Phenotypes_okay6.3"

echo $PHENO
echo $PATH

qsub  /group/ober-resources/users/smozaffari/POGWAS/bin/plotscripts/annotate.sh