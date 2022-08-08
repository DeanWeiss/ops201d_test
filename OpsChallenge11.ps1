@REM # Script: Ops 201 Class 10 Ops Challenge Solution
@REM # Author: Dean Weiss
@REM # Date of latest revision: 08 August 2022
@REM # Purpose: Write powershell script that automatically configures settings.

@REM # Main

@REM Enable File and Printer Sharing.
@REM Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True


@REM @REM Allow ICMP traffic.
@REM netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4

@REM @REM Enable Remote management.
@REM  reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /

@REM @REM Remove bloatware.
@REM iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

@REM @REM Enable Hyper-V.
@REM Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

@REM @REM Disable SMBv1.
@REM Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force


@REM # End