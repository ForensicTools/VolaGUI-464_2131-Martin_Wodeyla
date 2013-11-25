+----------+----------+----------+----------+----------+----------+
|								  |
|		  VolaGUI version 1.0 11/24/2013		  |
|    The Volatility Framework implemented in a Powershell GUI	  |
|								  |
+----------+----------+----------+----------+----------+----------+

README:

General Usage Notes:
+----------+----------+----------+

-PowerShell GUI wrapper for the Volatility Framework
-Ensure that volagui.config is within the same folder as the PowerShell program
-Within volagui.config, edit the first line (VolatilityPath=) to specify the full path to the Volatility Framework executable
-Tabs for the different command categories are located at the top
-Within each tab a drop down menu contains the specific commands
-Selecting each command will display a description for the command
-The complete command with options and flags will be displayed at the bottom of the window
-Log files can be located in %APPDATA%\VolaGUI
-The general page contains a textbox to run custom volatility commands if the GUI does not provide the command in the drop down. 
-When selecting the Output to File check box, this will output all commands to GUI window and to file called volagui.txt.
-GUI will freeze while Volatility is executing commands in the background. When Volatility has finished running, VolaGUI will unfreeze.



Running VolaGUI:
+----------+----------+----------+

Issue the command 'Set-RemoteExecution Unrestricted' from a PowerShell console to allow the GUI to run through
either of the three methods listed below

1.  Starting the GUI through the Windows GUI:
	-Right click the VolaGUI.ps1 file -> "Run with PowerShell"

2.  Starting the GUI through the Command Line:
	-Navigate to the directory containing the VolaGUI.ps1 PowerShell script
	-powershell ./VolaGUI.ps1

3.  Starting the GUI through the PowerShell Command Line:
	-Navigate to the directory containing the VolaGUI.ps1 PowerShell script
	-./VolaGUI.ps1
