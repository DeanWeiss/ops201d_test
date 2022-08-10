@REM # Script: Ops 201 Class 12 Ops Challenge Solution
@REM # Author: Dean Weiss
@REM # Date of latest revision: 09 August 2022
@REM # Purpose: Write powershell script that returns the IPv4 address string and no other extraneous information.

@REM # Main

function Get-IPv4 {
$Get_IPv4 = ipconfig /all > "network_report.txt"
Select-String -Path "network_report.txt" -Pattern "IPv4 Address"
}

Get-IPv4
echo "Prepare for deletion...."
pause
Remove-Item -Path "network_report.txt"

@REM # End