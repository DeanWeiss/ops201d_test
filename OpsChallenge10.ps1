@REM # Script: Ops 201 Class 10 Ops Challenge Solution
@REM # Author: Dean Weiss
@REM # Date of latest revision: 05 August 2022
@REM # Purpose: Create a script that runs lshw and shows specific information

@REM # Main

@REM Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.

Get-Process | sort CPU -Descending

@REM Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.

Get-Process | sort PID -Descending

@REM Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5

@REM Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.

Start-Process iexplore https://owasp.org/www-project-top-ten/

@REM Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.

for ($i=0; $i -le 10; $i++) {Start-Process -file iexplore -arg 'https://owasp.org/www-project-top-ten/'}

@REM Close all Internet Explorer windows.

get-process iexplore | Stop-Process

@REM Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.

taskkill /f /pid 7916

@REM 7916 is what my PID was for iexplore. 

@REM # End