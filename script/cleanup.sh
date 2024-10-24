#!/bin/bash

set -x  # Display executed commands

cd terraform/prod

# 一回ではDB関連のリソースが削除できないため2回実行
for i in 1 2
do
  echo "---------- Start terraform destroy ----------"
  terraform destroy -auto-approve
done
cd ../..

echo "---------- Finish cleanup shell script ----------"
