winget search --idYy Microsoft.PowerShell
winget install --id Microsoft.PowerShell --source winget




"terminal.integrated.profiles.windows": {
  "PowerShell5": {
    "path": "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
    "icon": "terminal-powershell",
    "overrideName": true,
    "color": "terminal.ansiBlue"
  },
  "PowerShell7": {
    "path": "C:\\Program Files\\PowerShell\\7\\pwsh.exe",
    "icon": "terminal-powershell",
    "overrideName": true,
    "color": "terminal.ansiGreen"
  }
},
"terminal.integrated.defaultProfile.windows": "PowerShell7"
