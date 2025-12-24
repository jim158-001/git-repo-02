# List of IP addresses
$ips = @(
    "10.245.44.43",
    "10.245.44.44",
    "10.245.44.45",
    "10.245.44.46",
    "10.245.44.47",
    "10.245.44.48",
    "10.245.44.49"
)

# Path to Edge executable (adjust if needed)
$edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

# Open each IP in a new tab
foreach ($ip in $ips) {
    Start-Process $edgePath "https://$ip"
}
