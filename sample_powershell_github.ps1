param($variablename)
write-host "My First Powershell Executed in Jenkins via github...$variablename"


function validateConnection {

    param($compName)

    if ( (Test-Connection -ComputerName $compName -Count 2 -Quiet) -eq "True" )
    {
        Write-Host "$compName is Online" -ForegroundColor Green
    }
    else {Write-Host "$compName is Offline" -ForegroundColor Red}

}


$hostnames = @("192.168.145.140", "192.168.145.145")

ForEach ($hostname in $hostnames) {
    validateConnection -compName $hostname
}