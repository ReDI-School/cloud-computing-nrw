# Template deployments

1. Create template (ARM, Bicep, Terraform, ...)
1. Add to source code management (or update tempalte there)
1. Publish the changes (push)
1. Automatically deploy changes (after review)
    1. az cli or Azure PowerShell with a template deployment, or specific task in orchestration system (Azure Pipelines, GitHub Workflow/Action)

## Template Deployment: ARM

```powershell
$resourceGroupName = 'rg-gerw-storage'
$location = 'germanywestcentral'
New-AzResourceGroup -Name $resourceGroupName -Location $location

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile .\arm\main.json -storageAccountName mystor241024
```

## Source Control for Templates using git

1. Get it! <https://git-scm.org>
1. git init for a new repository
1. Make changes
1. Stage changes with git add .
1. Commit changes with git commit -m 'A commit message'

## How to get help with templates

<https://learn.microsoft.com/en-us/azure/templates/> is a good start!

## Terraform vs Arm and Bicep

Terraform stores a state that has to be managed!