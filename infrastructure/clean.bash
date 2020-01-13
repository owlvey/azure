
resource_group="owlvey-prod-rg"

az configure --defaults location=eastus

az group delete -n $resource_group