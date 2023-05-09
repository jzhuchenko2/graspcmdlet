#this is a representation of pinging
Get-Content -Path C:\Scripts\Example.txt | ForEach-Object { 
    if (Test-Connection -ComputerName $_ -Quiet -Count 1){
        $operating_system = Get-CimInstance -ComputerName $_ -ClassName 'Win32_OperatingSystem' | Select-Object -Expand property Caption "$_ - $operating_system"
    }
}
