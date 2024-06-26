# We cloned our project to C:\sc\PSStackExchange

$ModuleName = 'testshared2'
$Path = "$($pwd).path"
$Author = 'Dan'
$Description = 'Shared Management Module'

# Create the module and private function directories
mkdir "$Path\$ModuleName"
mkdir $Path\$ModuleName\Functions
#mkdir $Path\$ModuleName\Public
$psmcontents = '# Import all function files from the Functions directory
Get-ChildItem -Path "$PSScriptRoot\Functions" -Filter *.ps1 | ForEach-Object {
    . $_.FullName
}'
#mkdir $Path\$ModuleName\en-US # For about_Help files
#mkdir $Path\Tests

#Create the module and related files
New-Item "$Path\$ModuleName\$ModuleName.psm1" -ItemType File
$psmcontents | Out-File -FilePath "$Path\$ModuleName\$ModuleName.psm1"
#New-Item "$Path\$ModuleName\$ModuleName.Format.ps1xml" -ItemType File
#New-Item "$Path\$ModuleName\en-US\about_$ModuleName.help.txt" -ItemType File
#New-Item "$Path\Tests\$ModuleName.Tests.ps1" -ItemType File
# New-ModuleManifest -Path $Path\$ModuleName\$ModuleName.psd1 `
#                    -RootModule $ModuleName.psm1 `
#                    -Description $Description `
#                    -PowerShellVersion 3.0 `
#                    -Author $Author `
#                    -FormatsToProcess "$ModuleName.Format.ps1xml"

# Copy the public/exported functions into the public folder, private functions into private folder
