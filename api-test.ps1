$uri1 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers'
Invoke-RestMethod -Uri $uri1 -Method Get
 
$uri2 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers?sitecode=SFO1&status=assigned'
Invoke-RestMethod -Uri $uri2 -Method Get

$uri3 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers?first=1&sitecode=LON1&status=unassigned'
Invoke-RestMethod -Uri $uri3 -Method Get

$uri4 = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1/voice/phonenumbers/15550001007'
Invoke-RestMethod -Uri $uri4 -Method Get