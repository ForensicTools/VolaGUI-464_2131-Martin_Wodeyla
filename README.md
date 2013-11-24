+----------+----------+----------+----------+----------+----------+
|								  |
|		  VolaGUI version 1.0 11/21/2013		  |
|    The Volatility Framework implemented in a Powershell GUI	  |
|								  |
+----------+----------+----------+----------+----------+----------+

README:

General Usage Notes:
+----------+----------+----------+

-PowerShell GUI wrapper for the Volatility Framework
-Tabs for the different command categories are located at the top
-Within each tab a drop down menu contains the specific commands
-Selecting each command will display a description for the command
-The complete command with options and flags will be displayed at the bottom of the window
-Log files can be located in %APPDATA%\VolaGUI



Running VolaGUI:
+----------+----------+----------+

Issue the command 'Set-RemoteExecution Unrestricted' to allow the GUI to run through
either of the three methods listed below

1.  Starting the GUI through the Windows GUI:
	-Right click the VolaGUI.ps1 file -> "Run with PowerShell"

2.  Starting the GUI through the Command Line:
	-Navigate to the directory containing the VolaGUI.ps1 PowerShell script
	-powershell ./VolaGUI.ps1

3.  Starting the GUI through the PowerShell Command Line:
	-Navigate to the directory containing the VolaGUI.ps1 PowerShell script
	-./VolaGUI.ps1
