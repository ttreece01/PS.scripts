#Listing DCs, Servers on the domain.



$MyDCs = Get-ADDomainController| select-object -ExpandProperty Name
$Myservers = Get-ADComputer -filter { operatingSystem -like "*server*" }
$Mynet = $MyDCs,$Myservers | fl > C:\domain.txt


