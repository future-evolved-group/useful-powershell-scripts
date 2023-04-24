# This script assumes the header is set to "Name". This can be amended to accomodate whatever your CSV headers are

$baseFile = Import-CSV "C:\path\to\base\csv\file.csv" | Group-Object -AsHashTable -AsString -Property 'Name'
$altFile = Import-CSV "C:\path\to\alt\csv\file.csv" | Group-Object -AsHashTable -AsString -Property 'Name'

$differentials = @()

foreach ($line in $altFile.Values) {
    if (!$baseFile[$line.Name]) {
        $differentials += $line
    }
}

$differentials | Export-CSV -NoTypeInformation "C:\path\to\export.csv"
