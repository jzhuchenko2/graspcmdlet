#defining the function
function Test-SpaceX {
    [cmdletBinding()] #turns into adv. function
    param(
        [Parameter(mandatory)]
        [int32]$PingCount
    )
    Test-Connection spacex.com -Count $PingCount
    Write-Error -Message "It's a trap!" -ErrorAction Stop
}

try { Test-SpaceX -ErrorAction Stop } catch { Write-Output "Launch porblemo!" Write-Output $_}
