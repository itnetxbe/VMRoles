﻿New-NetFirewallRule -Displayname "SQL DBE" -Program "C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Binn\sqlservr.exe" -Group 'SQL' -Enabled True -Direction Inbound -Action Allow 
New-NetFirewallRule -Displayname "SQL Browser" -Program "%ProgramFiles% (x86)\Microsoft SQL Server\90\Shared\sqlbrowser.exe" -Group 'SQL' -Enabled True -Direction Inbound -Action Allow
New-NetFirewallRule -displayName "SQL Broker" -Protocol TCP -LocalPort 4022 -Group 'SQL' -Enabled True -Direction Inbound -Action Allow