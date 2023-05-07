#for-loop
#$doctorstrange = @('josh','jake','bryan','jenny','jim')
#For($counter =0;$counter -le ($doctorstrange.Length -1);$counter++){
    #Write-Host "Holy smokes, it's" $doctorstrange[$counter]
#}

#Foreach ($peep in $doctorstrange) {
    #Write-Host $peep "has arrived"
#}

##While-loop
#$Xmen = @('Wolverine', 'Cyclops', 'Storm','jake')
#$counter = 0
#while($counter -ne 4) {
    #Write-host $Xmen[$counter] "is a mutant!"
    #$Xmen[$counter].Length
    #$counter++;
#}

#Do
$Xmen = @('Wolverine', 'Cyclops', 'Storm','jake')
$counter = 0
Do {
    Write-Host $Xmen[$counter] "is a mutant!"
    $counter++
} while ($counter -ne 6)