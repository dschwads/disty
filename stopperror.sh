#!/bin/bash

POD_NAMES=`kubectl get pods -n ticket-generator | grep server | cut -d' ' -f 1`
arr=($POD_NAMES)
for pod in "${arr[@]}"
do
    kubectl exec -it $pod -n ticket-generator rm /error
#  adding comments again for another test.
done
