#!/bin/bash

resource_group="owlvey-prod-rg"

az configure --defaults location=eastus

az group create -n $resource_group

az group deployment validate  --resource-group $resource_group --template-file "template.json"  --parameters @parameters.json