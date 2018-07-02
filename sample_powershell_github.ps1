param($variablename)
write-host "My First Powershell Executed in Jenkins via github...$variablename"
Get-Service -servicename VMTools
