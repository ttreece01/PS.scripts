#copying and moving files and folders to new location. Files and folders will now be in both areas.
#By using the recurse command all sub folders are included.

$Location1 = Read-Host "Please put path of folder you wish to copy to new location here"
$Location2 = Read-Host "Plese enter the path to the new location here"

Get-ChildItem $Location1 -Recurse | Copy-Item -Destination $Location2

Write-Host "Items have been copied to new location!"
