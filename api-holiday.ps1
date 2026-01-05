$baseURI = 'https://date.nager.at/api/v3/PublicHolidays/2027/GB?Global=False'
(Invoke-RestMethod -Uri ($baseURI)).count
$response = Invoke-RestMethod -Uri ($baseURI)
$response | Select-Object date,localname,name,Global,counties | Format-Table -AutoSize

clear-host
