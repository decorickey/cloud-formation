#!/bin/bash

STAGE=$1

if [ -z "${STAGE}" ]; then
  echo "STAGE is required."
  exit 1
fi

aws cloudformation update-stack \
  --stack-name bmonster-infra-$STAGE \
  --template-body file://template-bmonster.yaml \
  --parameters ParameterKey=Stage,ParameterValue=$STAGE