#Viewing logs
Get-EventLog -LogName Security | select timewritten,EventID,Category,message -first 20 | ft > C:\seclog.txt