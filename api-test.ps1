#https://stuksampdevswagger01.z33.web.core.windows.net/temp/Demo.html

$uri1 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers'
Invoke-RestMethod -Uri $uri1 -Method Get
 
$uri2 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers?sitecode=SFO1&status=assigned'
Invoke-RestMethod -Uri $uri2 -Method Get

$uri3 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers?first=1&sitecode=LON1&status=unassigned'
Invoke-RestMethod -Uri $uri3 -Method Get

$uri4 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers/15550001007'
Invoke-RestMethod -Uri $uri4 -Method Get

$uri5 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers?status=assigned'
Invoke-RestMethod -Uri $uri5 -Method Get


$uri6 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers/+15550001003?status=assigned'
$uri6 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers/+15550001001?status=assigned'
$uri6 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers/+15550001005?status=assigned'
Invoke-RestMethod -Uri $uri6 -Method Get

