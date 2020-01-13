#!/bin/bash

resource_group="owlvey-prod-rg"

az keyvault update  --name "owlvey-prod-vault" --enabled-for-template-deployment true

az configure --defaults location=eastus

az group create -n $resource_group

az group deployment create  --resource-group $resource_group --template-file "template.json"  --parameters @parameters.json

az group deployment create  --resource-group $resource_group --template-file "appplantemplate.json"  --parameters @appplanparameters.json

az group deployment create  --resource-group $resource_group --template-file "falconprodtemplate.json"  --parameters @falconprodparameters.json

az group deployment create  --resource-group $resource_group --template-file "falconprodtemplate.json"  --parameters @identityprodparameters.json

az group deployment create  --resource-group $resource_group --template-file "dbtemplate.json"  --parameters @dbparameters.json