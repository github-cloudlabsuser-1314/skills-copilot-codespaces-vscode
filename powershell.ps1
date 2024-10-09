# Define parameters
$resourceGroupName = "myResourceGroup"
$location = "EastUS"
$templateFile = "path/to/your/terraform.tf"
$storageAccountName = "mystorageaccount"

# Login to Azure
Connect-AzAccount

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Deploy the storage account using the template
New-AzResourceGroupDeployment `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $templateFile `
  -storageAccountName $storageAccountName