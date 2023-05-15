#Object members and variables
#Variables are very flexible
$Service=Get-Service -Name bits
$Service | gm 
$Service.Status
$Service.Start()
$Msg="Service Name is $($service.name.ToUpper())"
$msg
#working with multiple objects
$Services=Get-Service
$services[0]
$services[0].Status
$services[-1].Name
"Service Name is $($services[4].DisplayName)"
"Service Name is $($services[4].name.ToUpper())"

#paranthesis!!!!
#create a txt & file
'DC','Client' | Out-file c:\computers.txt
"ComputerName,IPAddress" | Out-file c:\Computers.csv
"DC,192.168.3.10" | Out-file c:\computers.csv -Append
"Client,192.168.3.100" | Out-File c:\Computers.csv -Append

#Getting names from a txt file 
Get-Service -name bits -ComputerName (Get-Content c:\computers.txt)
