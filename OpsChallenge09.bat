@REM # Script: Ops 201 Class 09 Ops Challenge Solution
@REM # Author: Dean Weiss
@REM # Date of latest revision: 02 August 2022
@REM # Purpose: Create a script that runs lshw and shows specific information

@REM # Main

@REM # Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-EventLog -LogName System -After (Get-Date).AddHours(-24) >last_24.txt

@REM # Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-EventLog -LogName System -EntryType Error >errors.txt

@REM # Print to the screen all events with ID of 16 from the System event log.
Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}

@REM # Print to the screen the most recent 20 entries from the System event log.
Get-EventLog -Logname System -Newest 20

@REM # Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
Get-EventLog -Logname System -Newest 500 | Group-Object -Property source | format-table -wrap -autosize

@REM # End