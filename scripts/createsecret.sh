#!/bin/sh
  .~/.aws/set_MFA_credentials.sh $mfa

  cp ~/.aws/MFA_credentials ./
  cat MFA_credentials
  kubectl delete cm aws-mfa -n capitolis
  kubectl create configmap aws-mfa --from-file=MFA_credentials -n capitolis
  rm MFA_credentials
  kubectl delete job update-secret -n capitolis
  kubectl create job --from=cronjob/ecr-registry-helper update-secret -n capitolis
