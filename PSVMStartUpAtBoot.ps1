## start oracle and then start the vms in headless mode at startup#
#
# by Arran Blows
#
# starting VMs at startup which scheduler and powershell
#
################################
Start-Transcript
Set-Executionpolicy Unrestricted
$importPSVirtual = $PSScriptRoot
$importPSVirtual = "" + "$PSScriptRoot" + "\PSVirtualBox.psd1"
Write-Output $importPSVirtual
Import-Module -name $importPSVirtual -verbose

$OracleLocation = "C:\Users\user\Desktop\new 1.py"

Write-Output "Starting Oracle"
start-process $OracleLocation

Start-Sleep -s 5
Get-VirtualBox
Write-Output "VMs starting"
Start-VBoxMachine -Name playtest1


