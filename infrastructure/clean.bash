
resource_group="owlvey-prod-rg"

az login

az configure --defaults location=eastus

az group delete -n owlvey-prod-rg