#snippets covering all of this to use this file for other use
#hearstring
@script = @'
[validateset("a","b","c")][String]$x = 'a'

$i ="powershell"
"this is the variable '$i, and $i rocks"

$computername="client"
Get-Service -name bits -ComputerName $computername | select MachineName, Name, Status

$p = Get-Process lsass

"Process id = $($p.id)"
#$p is mainly the system.diagnostics.process
'@

