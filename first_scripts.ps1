Write-Host "Congratulations! Your first script executed successfully"
Get-CimInstance -Class Win32_LogicalDisk |
    Select-Object -Property Name, @{
        label='FreeSpace'
        expression={($_.FreeSpace/1GB).ToString('F2')}
    }
<# creating a small script that creates test files in a given folder 

$path = "C:\temp"

1..10 | ForEach-Object {
    $newFile = "$path\test_file_$_.txt";
    New-Item $newFile
}#>
