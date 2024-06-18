$modulename = "testshared2"
".\$($modulename)\$($modulename).psd1"

$Params = @{ 
    "Path" 				= ".\$($modulename)\$($modulename).psd1"
    "Author" 			= 'Fake Author' 
    "CompanyName" 			= 'Fake Company' 
    "RootModule" 			= "$($modulename).psm1"
    "CompatiblePSEditions" 		= @('Desktop','Core') 
    #"FunctionsToExport" 	= @('Get-SharePointMember','Invoke-PowerAutomateFlow','New-TeamsMessage') 
    "FunctionsToExport" 	= @('Write-DEMOLog','Invoke-DEMOCommand','Get-DEMOContent','Unblock-DEMOFiles','Clear-DEMOContent') 
    "CmdletsToExport" 		= @() 
    "VariablesToExport" 		= '' 
    "AliasesToExport" 		= @() 
    "Description" = 'de Module' 
} 
New-ModuleManifest @Params
