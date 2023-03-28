#!/bin/bash

STAGE=$1

if [ -z "${STAGE}" ]; then
  echo "STAGE is required."
  exit 1
fi

aws cloudformation create-stack \
  --stack-name bmonster-infra-$STAGE \
  --template-body file://template-bmonster.yaml \
  --parameters ParameterKey=Stage,ParameterValue=$STAGE