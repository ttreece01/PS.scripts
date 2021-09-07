#Adding users from a csv file. Must insert path of csv file and edit based on needs.
$Newusers = Import-Csv -Path C:\
ForEach ($u in $Newusers) {
    $path = "OU=" + $u.Department + ",DC=Adatum,DC=com"
    $upn = $u.UserID + "@adatum.com"
    $display = $u.First + " " + $u.Last
    Write-Host "Creating the following users: $display in $path"
    New-ADUser -GivenName $u.First -Surname $u.Last -Name $display -DisplayName $display -SamAccountName $u.UserID -UserPrincipalName $UPN -Path $path -Department $u.Department
    Write-Host "New users have been created! Please review the accounts."
}

