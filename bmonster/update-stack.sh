#!/bin/bash

STAGE=$1

if [ -z "${STAGE}" ]; then
  echo "STAGE is required."
  exit 1
fi

aws cloudformation update-stack \
  --stack-name bmonster-resources-$STAGE \
  --template-body file://template.yaml \
  --parameters ParameterKey=Stage,ParameterValue=$STAGE