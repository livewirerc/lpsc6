$names= "Bob","James","Jason","Sarah","Amy"
$count = 0
ForEach ($singleName in $names)
{
    $count +=1
    Write-Host "$singleName"
} Write-Host "$count this is it"