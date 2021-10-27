$csv = import-csv $Args[0] -header "Serial","Key","Product","Code" -Encoding Default
foreach ($csv in $csv)
{
    $dest = ".\" + $csv.Serial + ".key"
    Write-Output ($csv.Serial + "," + $csv.Key + "," + $csv.Product + "," + $csv.Code + ",") | Out-File $dest -Encoding default
}