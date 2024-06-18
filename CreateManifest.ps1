$modulename = "testshared2"
".\$($modulename)\$($modulename).psd1"

$Params = @{ 
    "Path" 				= ".\$($modulename)\$($modulename).psd1"
    "Author" 			= 'Fake Author' 
    "CompanyName" 			= 'Fake Company' 
    "RootModule" 			= "$($modulename).psm1"
    "CompatiblePSEditions" 		= @('Desktop','Core') 
    #"FunctionsToExport" 	= @('Get-SharePointMember','Invoke-PowerAutomateFlow','New-TeamsMessage') 
    "FunctionsToExport" 	= @('Get-Hello','Get-Goodbye') 
    "CmdletsToExport" 		= @() 
    "VariablesToExport" 		= '' 
    "AliasesToExport" 		= @() 
    "Description" = 'de Module' 
} 
New-ModuleManifest @Params
