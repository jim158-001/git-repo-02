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



$baseURI = 'https://apim-uks-amp-core-dev-001.azure-api.net/insights/v1'
Invoke-RestMethod -Uri ($baseURI+'/voice/phonenumbers?sitecode=nyc1')
Invoke-RestMethod -Uri ($baseURI+'/voice/phonenumbers?sitecode=nyc1&status=assigned&pagesize=3')
(Invoke-RestMethod -Uri ($baseURI+'/voice/phonenumbers?pageNumber=1&pageSize=3&sitecode=nyc1&status=assigned')).items

(Invoke-RestMethod -Uri ($baseURI+'/voice/phonenumbers?sitecode=LON1&status=Assigned&pageSize=1')).items


$uri10 = 'https://api.insights.ampdev.applicable.com/v1/voice/sites?pagesize=2'
Invoke-RestMethod -Uri $uri10 -Method Get

curl -X GET -H "Ocp-Apim-Subscription-Key: c38ea0a2f6684e2691a4d594eb6d6585" -i 'https://api.insights.ampdev.applicable.com/v1/voice/sites?pagesize=2'
curl -X GET -H "Ocp-Apim-Subscription-Key: c38ea0a2f6684e2691a4d594eb6d6585" -H "Accept: application/json" -i 'https://api.insights.ampdev.applicable.com/v1/voice/sites?pagesize=2'



$uri = "https://api.insights.ampdev.applicable.com/v1/voice/sites?pagesize=3"
$headers = @{
    "Ocp-Apim-Subscription-Key" = "c38ea0a2f6684e2691a4d594eb6d6585"
}
$response = Invoke-RestMethod -Uri $uri -Method GET -Headers $headers
$response  # This