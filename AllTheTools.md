# Tools

## General

git, https://git-scm.org (mandatory)  
  - open-source, cross-platform
  - Keep track of "code" and include versioning (for example using Tags)
  - Allows for collaboration (if repository is hosted in a shared location)
  - Public/Private repositories cloud-hosted: github.com  

Visual Studio Code, https://code.visualstudio.com (or other editor of choice)  
  - open-source, cross-platform
  - With a GitHub account you can sync settings between computers
  - In a GitHub repo: Opened by pressing "."

## Infrastructure as Code
Azure: Azure Resource Manager Templates, Bicep  
Amazon: CloudFormation  
Google: Cloud Deployment Manager  

### Cloud-agnostic tools
terraform  
  - hashicorp, also produces tools like Packer
  - Can be extended with Resource Providers to target different clouds (including Private Clouds like Hyper-V, VMWare Esxi)
  - Provides a Domain-specific language to define and deploy Resources  

Pulumi  
Snyk  

## Azure

SDKs (Software Development Kits): https://azure.microsoft.com/en-us/downloads
Azure CLI: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli
  - Single download, no additional components, but: Not as great as PowerShell ;)
Azure PowerShell:  
  - PowerShell: Object-oriented, interactive Shell
  - Uses Verb-Noun syntax for its native code called Cmdlets
  - On Windows: Integrated, powershell.exe
  - On Linux/MacOs: pwsh --> github.com/powershell/powershell
```powershell
Get-PackageProvider -Name Nuget -ForceBootstrap
# Module: Library of functions
# Az.Accounts --> Required to sign in
# Az.Compute  --> Required for IaaS resources like VMs
# Az.Storage  --> Required for Storage Accounts
Install-Module Az.Accounts, Az.Compute, Az.Storage -Force -Repository PSGallery -Scope CurrentUser
```
Azure Cloud Shell (Browser): https://shell.azure.com/
  - bash and PowerShell
  - git is preinstalled, among other tools
  - Runs in container that is spun up for you
  - Storage Account with File Share required!
    - Can specify your own storage, if not, it tries to create one (which at ReDI, will fail!)
    - Storage Account Name needs to be unique, File Share name does not have to be unique

## Amazon Web Services
Tools: https://aws.amazon.com/tools
## Google Cloud Project
Tools: https://cloud.google.com/products/tools
