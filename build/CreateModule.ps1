

$ModuleName = 'testshared2'
$Path = "$($pwd.path)"
$Author = 'Example'
$Company = 'Example'
$Description = 'Shared Services Module'


mkdir "..\$ModuleName"
mkdir ..\$ModuleName\Functions
$psmcontents = '# Import all function files from the Functions directory
Get-ChildItem -Path "$PSScriptRoot\Functions" -Filter *.ps1 | ForEach-Object {
    . $_.FullName
}'


New-Item "..\$ModuleName\$ModuleName.psm1" -ItemType File
$psmcontents | Out-File -FilePath "..\$ModuleName\$ModuleName.psm1"


$Params = @{ 
    "Path" 				= "..\$($modulename)\$($modulename).psd1"
    "Author" 			= $Author 
    "CompanyName" 			= '$Company
    "RootModule" 			= "$($modulename).psm1"
    "CompatiblePSEditions" 		= @('Desktop','Core') 
    #"FunctionsToExport" 	= @('Get-SharePointMember','Invoke-PowerAutomateFlow','New-TeamsMessage') 
    "FunctionsToExport" 	= @('Get-Hello','Get-Goodbye') 
    "CmdletsToExport" 		= @() 
    "VariablesToExport" 		= '' 
    "AliasesToExport" 		= @() 
    "Description" = $Description
} 
New-ModuleManifest @Params
