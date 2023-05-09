#this is a representation of pinging
Get-Content -Path C:\Scripts\Example.txt | ForEach-Object { 
    if (Test-Connection -ComputerName $_ -Quiet -Count 1){
        Get-CimInstance -ComputerName $_ -ClassName 'joshsmagic'
    }
}