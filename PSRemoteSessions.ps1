#Enable Psremote and establishing a session.
Enable-PSRemoting -Force

$comp = Read-Host "Enter computer name here"
$session = New-PSSession -ComputerName $comp
#$comp can be replaced by computer names seperatted with commas if establishing multiple sessions.
Get-PSSession 
# shows current active sessions
Get-PSSession | Remove-PSSession
#Run above command seperate once ready to close all sessions