#logs with user input


[string]$logName = Read-Host "Please enter log name"
[string]$CompName = Get-ADComputer -Filter * | Select-Object -ExpandProperty Name | Out-GridView -OutputMode Multiple
[int]$Entries = Read-Host "How many new entries would you like to view?" 


Get-EventLog -LogName $logName -ComputerName $CompName -Newest $Entries