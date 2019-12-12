#!/usr/bin/env bash

ROLENAME=$1

echo "Creating the role ${ROLENAME}"
aws iam create-role --role-name ${ROLENAME} --assume-role-policy-document file://kopsTrustPolicy.json

echo "Attaching Policies to role ${ROLENAME}"
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --role-name ${ROLENAME}
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/IAMFullAccess --role-name ${ROLENAME}
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --role-name ${ROLENAME}
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AmazonRoute53FullAccess --role-name ${ROLENAME}
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AmazonVPCFullAccess --role-name ${ROLENAME}