#Function for entire GUI
function GenerateForm {
########################################################################
# VolaGUI
# GUI for the Volatility Framework
# Dan Wodeyla & Casey Martin
# 11/3/13
# Version .1
# ---GUI elements in place, no functionality yet
########################################################################

#Required Assemblies for GUI, .NET based
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null


#All Form Objects
$volaGuiForm = New-Object System.Windows.Forms.Form
$alllTab = New-Object System.Windows.Forms.TabControl
$generalPage = New-Object System.Windows.Forms.TabPage
$csvCheckBox = New-Object System.Windows.Forms.CheckBox
$autoDetectBox = New-Object System.Windows.Forms.CheckBox
$osDropDown = New-Object System.Windows.Forms.ComboBox
$osLabel = New-Object System.Windows.Forms.Label
$infoBoxGen = New-Object System.Windows.Forms.RichTextBox
$fileBox = New-Object System.Windows.Forms.TextBox
$fileLabel = New-Object System.Windows.Forms.Label
$fileBrowse = New-Object System.Windows.Forms.Button
$processDllTab = New-Object System.Windows.Forms.TabPage
$dll_Execute_Group = New-Object System.Windows.Forms.GroupBox
$dll_Comm_Output = New-Object System.Windows.Forms.RichTextBox
$dll_Exec_Button = New-Object System.Windows.Forms.Button
$dll_Comm_StringBox = New-Object System.Windows.Forms.TextBox
$dll_Descript_Group = New-Object System.Windows.Forms.GroupBox
$dll_Descript_Text = New-Object System.Windows.Forms.RichTextBox
$dll_comm_group = New-Object System.Windows.Forms.GroupBox
$dll_com_drop = New-Object System.Windows.Forms.ComboBox
$processMemPage = New-Object System.Windows.Forms.TabPage
$procmem_Execute_Group = New-Object System.Windows.Forms.GroupBox
$procmem_Comm_Output = New-Object System.Windows.Forms.RichTextBox
$procmem_Exec_Button = New-Object System.Windows.Forms.Button
$procmem_Comm_StringBox = New-Object System.Windows.Forms.TextBox
$procmem_Descript_Group = New-Object System.Windows.Forms.GroupBox
$procmem_Descript_Text = New-Object System.Windows.Forms.RichTextBox
$procmem_comm_group = New-Object System.Windows.Forms.GroupBox
$comboBox2 = New-Object System.Windows.Forms.ComboBox
$kernelPage = New-Object System.Windows.Forms.TabPage
$kernel_Execute_Group = New-Object System.Windows.Forms.GroupBox
$kernel_Comm_Output = New-Object System.Windows.Forms.RichTextBox
$kernel_Exec_Button = New-Object System.Windows.Forms.Button
$kernel_Comm_StringBox = New-Object System.Windows.Forms.TextBox
$kernel_Descript_Group = New-Object System.Windows.Forms.GroupBox
$kernel_Descript_Text = New-Object System.Windows.Forms.RichTextBox
$kernel_Comm_Group = New-Object System.Windows.Forms.GroupBox
$kernel_Comm_Drop = New-Object System.Windows.Forms.ComboBox
$guiPage = New-Object System.Windows.Forms.TabPage
$gui_Execute_Group = New-Object System.Windows.Forms.GroupBox
$gui_Comm_Output = New-Object System.Windows.Forms.RichTextBox
$gui_Exec_Button = New-Object System.Windows.Forms.Button
$gui_Comm_StringBox = New-Object System.Windows.Forms.TextBox
$gui_Descript_Group = New-Object System.Windows.Forms.GroupBox
$gui_Descript_Text = New-Object System.Windows.Forms.RichTextBox
$gui_Comm_Group = New-Object System.Windows.Forms.GroupBox
$gui_Comm_Drop = New-Object System.Windows.Forms.ComboBox
$netPage = New-Object System.Windows.Forms.TabPage
$net_Execute_Group = New-Object System.Windows.Forms.GroupBox
$net_Comm_Output = New-Object System.Windows.Forms.RichTextBox
$net_Exec_Button = New-Object System.Windows.Forms.Button
$net_Comm_StringBox = New-Object System.Windows.Forms.TextBox
$net_Descript_Group = New-Object System.Windows.Forms.GroupBox
$net_Descript_Text = New-Object System.Windows.Forms.RichTextBox
$net_Comm_Group = New-Object System.Windows.Forms.GroupBox
$net_Comm_Drop = New-Object System.Windows.Forms.ComboBox
$registryPage = New-Object System.Windows.Forms.TabPage
$reg_Execute_Group = New-Object System.Windows.Forms.GroupBox
$reg_Comm_Output = New-Object System.Windows.Forms.RichTextBox
$reg_Exec_Button = New-Object System.Windows.Forms.Button
$reg_Comm_StringBox = New-Object System.Windows.Forms.TextBox
$reg_Descript_Group = New-Object System.Windows.Forms.GroupBox
$reg_Descript_Text = New-Object System.Windows.Forms.RichTextBox
$reg_Comm_Group = New-Object System.Windows.Forms.GroupBox
$reg_Comm_Drop = New-Object System.Windows.Forms.ComboBox
$malwarePage = New-Object System.Windows.Forms.TabPage
$mal_Execute_Group = New-Object System.Windows.Forms.GroupBox
$mal_Comm_Output = New-Object System.Windows.Forms.RichTextBox
$mal_Exec_Button = New-Object System.Windows.Forms.Button
$mal_Comm_StringBox = New-Object System.Windows.Forms.TextBox
$mal_Descript_Group = New-Object System.Windows.Forms.GroupBox
$mal_Descript_Text = New-Object System.Windows.Forms.RichTextBox
$mal_Comm_Group = New-Object System.Windows.Forms.GroupBox
$mal_Comm_Drop = New-Object System.Windows.Forms.ComboBox
$openFileDialog1 = New-Object System.Windows.Forms.OpenFileDialog
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState


#----------------------------------------------
# All code used to interact with any of the GUI objects, when an event occurs executed code comes from one of these sections.
# Sections of code ending in "Execute" occur when excute button is clicked on the respective tab
# Sections of code ending in "CommandChanged" occur when a different item is selected from the dropdown
#----------------------------------------------

$regCommandChanged= 
{


}

$guiCommandChanged= 
{


}

$regExecute= 
{


}

$netExecute= 
{


}

$malExecute= 
{


}

$dllExecute= 
{


}

$autoDetectCheckedChecked= 
{


}

$malCommandChanged= 
{


}

$handler_form1_Load= 
{


}

$dllCommandChanged= 
{


}

$netCommandChanged= 
{


}

$kernelExecute= 
{


}

$guiExecute= 
{


}

$fileBrowseClicked= 
{


}

$kernelCommandChanged= 
{


}

$handler_openFileDialog1_FileOk= 
{


}

$procMemCommandChanged= 
{


}

$procMemExecute= 
{


}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$volaGuiForm.WindowState = $InitialFormWindowState
}

#----------------------------------------------
# The following code is responsible for creating all GUI elements on screen
# Each element is its own object, that contains different items and functions
# Most of this code is generally the same, just with different names depending on its location
# Font, position, GUI text, etc set in this code block
#----------------------------------------------

$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 648
$System_Drawing_Size.Width = 564
$volaGuiForm.ClientSize = $System_Drawing_Size
$volaGuiForm.DataBindings.DefaultDataSourceUpdateMode = 0
$volaGuiForm.Name = "volaGuiForm"
$volaGuiForm.Text = "VolaGUI"
$volaGuiForm.add_Load($handler_form1_Load) ##Code executed at form load##

##Tab Creation
$alllTab.Anchor = 15
$alllTab.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 13
$alllTab.Location = $System_Drawing_Point
$alllTab.Name = "alllTab"
$alllTab.SelectedIndex = 0
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 623
$System_Drawing_Size.Width = 539
$alllTab.Size = $System_Drawing_Size
$alllTab.TabIndex = 0

$volaGuiForm.Controls.Add($alllTab)
$generalPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$generalPage.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$generalPage.Location = $System_Drawing_Point
$generalPage.Name = "generalPage"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$generalPage.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 597
$System_Drawing_Size.Width = 531
$generalPage.Size = $System_Drawing_Size
$generalPage.TabIndex = 0
$generalPage.Text = "General"

$alllTab.Controls.Add($generalPage) ##Adding general tab

##All GUI objects on General Tab
##Code for CSV Checkbox
$csvCheckBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 361
$System_Drawing_Point.Y = 279
$csvCheckBox.Location = $System_Drawing_Point
$csvCheckBox.Name = "csvCheckBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 104
$csvCheckBox.Size = $System_Drawing_Size
$csvCheckBox.TabIndex = 7
$csvCheckBox.Text = "Output to CSV"
$csvCheckBox.UseVisualStyleBackColor = $True

$generalPage.Controls.Add($csvCheckBox) 

##Code for auto detect checkbox
$autoDetectBox.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 258
$System_Drawing_Point.Y = 280
$autoDetectBox.Location = $System_Drawing_Point
$autoDetectBox.Name = "autoDetectBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 104
$autoDetectBox.Size = $System_Drawing_Size
$autoDetectBox.TabIndex = 6
$autoDetectBox.Text = "AutoDetect"
$autoDetectBox.UseVisualStyleBackColor = $True
$autoDetectBox.add_CheckedChanged($autoDetectCheckedChecked) ##Event occurs, executes code from the previous section##

$generalPage.Controls.Add($autoDetectBox)

##The OS dropdown Code
$osDropDown.DataBindings.DefaultDataSourceUpdateMode = 0
$osDropDown.DropDownStyle = 2
$osDropDown.FormattingEnabled = $True
$osDropDown.Items.Add("Windows 7SP1x86")|Out-Null
$osDropDown.Items.Add("Windows 7SP1x64")|Out-Null
$osDropDown.Items.Add("WinXPSP3")|Out-Null
$osDropDown.Items.Add("WinXPSP2")|Out-Null
$osDropDown.Items.Add("WinXPSP1")|Out-Null
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 282
$osDropDown.Location = $System_Drawing_Point
$osDropDown.Name = "osDropDown"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 226
$osDropDown.Size = $System_Drawing_Size
$osDropDown.TabIndex = 5

$generalPage.Controls.Add($osDropDown)

$osLabel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 255
$osLabel.Location = $System_Drawing_Point
$osLabel.Name = "osLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 65
$osLabel.Size = $System_Drawing_Size
$osLabel.TabIndex = 4
$osLabel.Text = "Image OS"

$generalPage.Controls.Add($osLabel)

$infoBoxGen.Anchor = 13
$infoBoxGen.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$infoBoxGen.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$infoBoxGen.Location = $System_Drawing_Point
$infoBoxGen.Name = "infoBoxGen"
$infoBoxGen.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 185
$System_Drawing_Size.Width = 518
$infoBoxGen.Size = $System_Drawing_Size
$infoBoxGen.TabIndex = 3
$infoBoxGen.Text = ""

$generalPage.Controls.Add($infoBoxGen)

$fileBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 221
$fileBox.Location = $System_Drawing_Point
$fileBox.Name = "fileBox"
$fileBox.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 377
$fileBox.Size = $System_Drawing_Size
$fileBox.TabIndex = 2

$generalPage.Controls.Add($fileBox)

$fileLabel.DataBindings.DefaultDataSourceUpdateMode = 0
$fileLabel.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",8.25,0,3,1)

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 3
$System_Drawing_Point.Y = 195
$fileLabel.Location = $System_Drawing_Point
$fileLabel.Name = "fileLabel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 58
$fileLabel.Size = $System_Drawing_Size
$fileLabel.TabIndex = 1
$fileLabel.Text = "Image File"

$generalPage.Controls.Add($fileLabel)


$fileBrowse.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 390
$System_Drawing_Point.Y = 218
$fileBrowse.Location = $System_Drawing_Point
$fileBrowse.Name = "fileBrowse"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$fileBrowse.Size = $System_Drawing_Size
$fileBrowse.TabIndex = 0
$fileBrowse.Text = "Browse"
$fileBrowse.UseVisualStyleBackColor = $True
$fileBrowse.add_Click($fileBrowseClicked) ##Event occurs, executes code from the previous section##

$generalPage.Controls.Add($fileBrowse)
##End code for GUI elements on general tab

##Start Code for the Process/DLL tab and all GUI elements on this tab
$processDllTab.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$processDllTab.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$processDllTab.Location = $System_Drawing_Point
$processDllTab.Name = "processDllTab"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$processDllTab.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 597
$System_Drawing_Size.Width = 531
$processDllTab.Size = $System_Drawing_Size
$processDllTab.TabIndex = 1
$processDllTab.Text = "Process/DLLs"

$alllTab.Controls.Add($processDllTab)
$dll_Execute_Group.Anchor = 13

$dll_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 340
$dll_Execute_Group.Location = $System_Drawing_Point
$dll_Execute_Group.Name = "dll_Execute_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 251
$System_Drawing_Size.Width = 518
$dll_Execute_Group.Size = $System_Drawing_Size
$dll_Execute_Group.TabIndex = 2
$dll_Execute_Group.TabStop = $False
$dll_Execute_Group.Text = "Command Execution"

$processDllTab.Controls.Add($dll_Execute_Group)
$dll_Comm_Output.Anchor = 15
$dll_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 62
$dll_Comm_Output.Location = $System_Drawing_Point
$dll_Comm_Output.Name = "dll_Comm_Output"
$dll_Comm_Output.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 183
$System_Drawing_Size.Width = 505
$dll_Comm_Output.Size = $System_Drawing_Size
$dll_Comm_Output.TabIndex = 2
$dll_Comm_Output.Text = ""

$dll_Execute_Group.Controls.Add($dll_Comm_Output)


$dll_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 341
$System_Drawing_Point.Y = 35
$dll_Exec_Button.Location = $System_Drawing_Point
$dll_Exec_Button.Name = "dll_Exec_Button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 87
$dll_Exec_Button.Size = $System_Drawing_Size
$dll_Exec_Button.TabIndex = 1
$dll_Exec_Button.Text = "Execute"
$dll_Exec_Button.UseVisualStyleBackColor = $True
$dll_Exec_Button.add_Click($dllExecute) ##Event occurs, executes code from the previous section##

$dll_Execute_Group.Controls.Add($dll_Exec_Button)

$dll_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 35
$dll_Comm_StringBox.Location = $System_Drawing_Point
$dll_Comm_StringBox.Name = "dll_Comm_StringBox"
$dll_Comm_StringBox.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 310
$dll_Comm_StringBox.Size = $System_Drawing_Size
$dll_Comm_StringBox.TabIndex = 0

$dll_Execute_Group.Controls.Add($dll_Comm_StringBox)


$dll_Descript_Group.Anchor = 13

$dll_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 94
$dll_Descript_Group.Location = $System_Drawing_Point
$dll_Descript_Group.Name = "dll_Descript_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 240
$System_Drawing_Size.Width = 518
$dll_Descript_Group.Size = $System_Drawing_Size
$dll_Descript_Group.TabIndex = 1
$dll_Descript_Group.TabStop = $False
$dll_Descript_Group.Text = "Command Description/Options"

$processDllTab.Controls.Add($dll_Descript_Group)
$dll_Descript_Text.Anchor = 13
$dll_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$dll_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$dll_Descript_Text.Location = $System_Drawing_Point
$dll_Descript_Text.Name = "dll_Descript_Text"
$dll_Descript_Text.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 110
$System_Drawing_Size.Width = 505
$dll_Descript_Text.Size = $System_Drawing_Size
$dll_Descript_Text.TabIndex = 0
$dll_Descript_Text.Text = ""

$dll_Descript_Group.Controls.Add($dll_Descript_Text)


$dll_comm_group.Anchor = 13

$dll_comm_group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$dll_comm_group.Location = $System_Drawing_Point
$dll_comm_group.Name = "dll_comm_group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 59
$System_Drawing_Size.Width = 518
$dll_comm_group.Size = $System_Drawing_Size
$dll_comm_group.TabIndex = 0
$dll_comm_group.TabStop = $False
$dll_comm_group.Text = "Available Commands:"

$processDllTab.Controls.Add($dll_comm_group)
$dll_com_drop.DataBindings.DefaultDataSourceUpdateMode = 0
$dll_com_drop.DropDownStyle = 2
$dll_com_drop.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$dll_com_drop.Location = $System_Drawing_Point
$dll_com_drop.Name = "dll_com_drop"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 183
$dll_com_drop.Size = $System_Drawing_Size
$dll_com_drop.TabIndex = 0
$dll_com_drop.add_SelectionChangeCommitted($dllCommandChanged) ##Event occurs, executes code from the previous section##

$dll_comm_group.Controls.Add($dll_com_drop)
##End code for GUI objects on Proccess/DLL tab

##Start code for Process Mem tab
$processMemPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$processMemPage.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$processMemPage.Location = $System_Drawing_Point
$processMemPage.Name = "processMemPage"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$processMemPage.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 597
$System_Drawing_Size.Width = 531
$processMemPage.Size = $System_Drawing_Size
$processMemPage.TabIndex = 2
$processMemPage.Text = "Process Mem"

$alllTab.Controls.Add($processMemPage)
$procmem_Execute_Group.Anchor = 13

$procmem_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 340
$procmem_Execute_Group.Location = $System_Drawing_Point
$procmem_Execute_Group.Name = "procmem_Execute_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 251
$System_Drawing_Size.Width = 518
$procmem_Execute_Group.Size = $System_Drawing_Size
$procmem_Execute_Group.TabIndex = 2
$procmem_Execute_Group.TabStop = $False
$procmem_Execute_Group.Text = "Command Execution"

$processMemPage.Controls.Add($procmem_Execute_Group)
$procmem_Comm_Output.Anchor = 15
$procmem_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$procmem_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 62
$procmem_Comm_Output.Location = $System_Drawing_Point
$procmem_Comm_Output.Name = "procmem_Comm_Output"
$procmem_Comm_Output.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 183
$System_Drawing_Size.Width = 505
$procmem_Comm_Output.Size = $System_Drawing_Size
$procmem_Comm_Output.TabIndex = 2
$procmem_Comm_Output.Text = ""

$procmem_Execute_Group.Controls.Add($procmem_Comm_Output)


$procmem_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 341
$System_Drawing_Point.Y = 35
$procmem_Exec_Button.Location = $System_Drawing_Point
$procmem_Exec_Button.Name = "procmem_Exec_Button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 87
$procmem_Exec_Button.Size = $System_Drawing_Size
$procmem_Exec_Button.TabIndex = 1
$procmem_Exec_Button.Text = "Execute"
$procmem_Exec_Button.UseVisualStyleBackColor = $True
$procmem_Exec_Button.add_Click($procMemExecute) ##Event occurs, executes code from the previous section##

$procmem_Execute_Group.Controls.Add($procmem_Exec_Button)

$procmem_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 35
$procmem_Comm_StringBox.Location = $System_Drawing_Point
$procmem_Comm_StringBox.Name = "procmem_Comm_StringBox"
$procmem_Comm_StringBox.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 310
$procmem_Comm_StringBox.Size = $System_Drawing_Size
$procmem_Comm_StringBox.TabIndex = 0

$procmem_Execute_Group.Controls.Add($procmem_Comm_StringBox)


$procmem_Descript_Group.Anchor = 13

$procmem_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 94
$procmem_Descript_Group.Location = $System_Drawing_Point
$procmem_Descript_Group.Name = "procmem_Descript_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 240
$System_Drawing_Size.Width = 518
$procmem_Descript_Group.Size = $System_Drawing_Size
$procmem_Descript_Group.TabIndex = 1
$procmem_Descript_Group.TabStop = $False
$procmem_Descript_Group.Text = "Command Description/Options"

$processMemPage.Controls.Add($procmem_Descript_Group)
$procmem_Descript_Text.Anchor = 13
$procmem_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$procmem_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$procmem_Descript_Text.Location = $System_Drawing_Point
$procmem_Descript_Text.Name = "procmem_Descript_Text"
$procmem_Descript_Text.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 110
$System_Drawing_Size.Width = 505
$procmem_Descript_Text.Size = $System_Drawing_Size
$procmem_Descript_Text.TabIndex = 0
$procmem_Descript_Text.Text = ""

$procmem_Descript_Group.Controls.Add($procmem_Descript_Text)


$procmem_comm_group.Anchor = 13

$procmem_comm_group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$procmem_comm_group.Location = $System_Drawing_Point
$procmem_comm_group.Name = "procmem_comm_group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 59
$System_Drawing_Size.Width = 518
$procmem_comm_group.Size = $System_Drawing_Size
$procmem_comm_group.TabIndex = 0
$procmem_comm_group.TabStop = $False
$procmem_comm_group.Text = "Available Commands:"

$processMemPage.Controls.Add($procmem_comm_group)
$comboBox2.DataBindings.DefaultDataSourceUpdateMode = 0
$comboBox2.DropDownStyle = 2
$comboBox2.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$comboBox2.Location = $System_Drawing_Point
$comboBox2.Name = "comboBox2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 183
$comboBox2.Size = $System_Drawing_Size
$comboBox2.TabIndex = 0
$comboBox2.add_SelectionChangeCommitted($procMemCommandChanged) ##Event occurs, executes code from the previous section##

$procmem_comm_group.Controls.Add($comboBox2)
##End code for GUI elemetns on Process Memory Tab

##Start Code for GUI objects on Kernel tab
$kernelPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$kernelPage.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$kernelPage.Location = $System_Drawing_Point
$kernelPage.Name = "kernelPage"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$kernelPage.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 597
$System_Drawing_Size.Width = 531
$kernelPage.Size = $System_Drawing_Size
$kernelPage.TabIndex = 3
$kernelPage.Text = "Kernel Mem/Obj"

$alllTab.Controls.Add($kernelPage)
$kernel_Execute_Group.Anchor = 13

$kernel_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 340
$kernel_Execute_Group.Location = $System_Drawing_Point
$kernel_Execute_Group.Name = "kernel_Execute_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 251
$System_Drawing_Size.Width = 518
$kernel_Execute_Group.Size = $System_Drawing_Size
$kernel_Execute_Group.TabIndex = 2
$kernel_Execute_Group.TabStop = $False
$kernel_Execute_Group.Text = "Command Execution"

$kernelPage.Controls.Add($kernel_Execute_Group)
$kernel_Comm_Output.Anchor = 15
$kernel_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$kernel_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 62
$kernel_Comm_Output.Location = $System_Drawing_Point
$kernel_Comm_Output.Name = "kernel_Comm_Output"
$kernel_Comm_Output.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 183
$System_Drawing_Size.Width = 505
$kernel_Comm_Output.Size = $System_Drawing_Size
$kernel_Comm_Output.TabIndex = 2
$kernel_Comm_Output.Text = ""

$kernel_Execute_Group.Controls.Add($kernel_Comm_Output)


$kernel_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 341
$System_Drawing_Point.Y = 35
$kernel_Exec_Button.Location = $System_Drawing_Point
$kernel_Exec_Button.Name = "kernel_Exec_Button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 87
$kernel_Exec_Button.Size = $System_Drawing_Size
$kernel_Exec_Button.TabIndex = 1
$kernel_Exec_Button.Text = "Execute"
$kernel_Exec_Button.UseVisualStyleBackColor = $True
$kernel_Exec_Button.add_Click($kernelExecute) ##Event occurs, executes code from the previous section##

$kernel_Execute_Group.Controls.Add($kernel_Exec_Button)

$kernel_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 35
$kernel_Comm_StringBox.Location = $System_Drawing_Point
$kernel_Comm_StringBox.Name = "kernel_Comm_StringBox"
$kernel_Comm_StringBox.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 310
$kernel_Comm_StringBox.Size = $System_Drawing_Size
$kernel_Comm_StringBox.TabIndex = 0

$kernel_Execute_Group.Controls.Add($kernel_Comm_StringBox)


$kernel_Descript_Group.Anchor = 13

$kernel_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 94
$kernel_Descript_Group.Location = $System_Drawing_Point
$kernel_Descript_Group.Name = "kernel_Descript_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 240
$System_Drawing_Size.Width = 518
$kernel_Descript_Group.Size = $System_Drawing_Size
$kernel_Descript_Group.TabIndex = 1
$kernel_Descript_Group.TabStop = $False
$kernel_Descript_Group.Text = "Command Description/Options"

$kernelPage.Controls.Add($kernel_Descript_Group)
$kernel_Descript_Text.Anchor = 13
$kernel_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$kernel_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$kernel_Descript_Text.Location = $System_Drawing_Point
$kernel_Descript_Text.Name = "kernel_Descript_Text"
$kernel_Descript_Text.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 110
$System_Drawing_Size.Width = 505
$kernel_Descript_Text.Size = $System_Drawing_Size
$kernel_Descript_Text.TabIndex = 0
$kernel_Descript_Text.Text = ""

$kernel_Descript_Group.Controls.Add($kernel_Descript_Text)


$kernel_Comm_Group.Anchor = 13

$kernel_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$kernel_Comm_Group.Location = $System_Drawing_Point
$kernel_Comm_Group.Name = "kernel_Comm_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 59
$System_Drawing_Size.Width = 518
$kernel_Comm_Group.Size = $System_Drawing_Size
$kernel_Comm_Group.TabIndex = 0
$kernel_Comm_Group.TabStop = $False
$kernel_Comm_Group.Text = "Available Commands:"

$kernelPage.Controls.Add($kernel_Comm_Group)
$kernel_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0
$kernel_Comm_Drop.DropDownStyle = 2
$kernel_Comm_Drop.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$kernel_Comm_Drop.Location = $System_Drawing_Point
$kernel_Comm_Drop.Name = "kernel_Comm_Drop"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 183
$kernel_Comm_Drop.Size = $System_Drawing_Size
$kernel_Comm_Drop.TabIndex = 0
$kernel_Comm_Drop.add_SelectionChangeCommitted($kernelCommandChanged) ##Event occurs, executes code from the previous section##

$kernel_Comm_Group.Controls.Add($kernel_Comm_Drop)
##End code for all GUI objects on Kernel tab

##Start code for all GUI objects on GUI memory tab
$guiPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$guiPage.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$guiPage.Location = $System_Drawing_Point
$guiPage.Name = "guiPage"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$guiPage.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 597
$System_Drawing_Size.Width = 531
$guiPage.Size = $System_Drawing_Size
$guiPage.TabIndex = 4
$guiPage.Text = "GUI Mem"

$alllTab.Controls.Add($guiPage)
$gui_Execute_Group.Anchor = 15

$gui_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 340
$gui_Execute_Group.Location = $System_Drawing_Point
$gui_Execute_Group.Name = "gui_Execute_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 251
$System_Drawing_Size.Width = 518
$gui_Execute_Group.Size = $System_Drawing_Size
$gui_Execute_Group.TabIndex = 2
$gui_Execute_Group.TabStop = $False
$gui_Execute_Group.Text = "Command Execution"

$guiPage.Controls.Add($gui_Execute_Group)
$gui_Comm_Output.Anchor = 15
$gui_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$gui_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 62
$gui_Comm_Output.Location = $System_Drawing_Point
$gui_Comm_Output.Name = "gui_Comm_Output"
$gui_Comm_Output.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 183
$System_Drawing_Size.Width = 505
$gui_Comm_Output.Size = $System_Drawing_Size
$gui_Comm_Output.TabIndex = 2
$gui_Comm_Output.Text = ""

$gui_Execute_Group.Controls.Add($gui_Comm_Output)


$gui_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 341
$System_Drawing_Point.Y = 35
$gui_Exec_Button.Location = $System_Drawing_Point
$gui_Exec_Button.Name = "gui_Exec_Button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 87
$gui_Exec_Button.Size = $System_Drawing_Size
$gui_Exec_Button.TabIndex = 1
$gui_Exec_Button.Text = "Execute"
$gui_Exec_Button.UseVisualStyleBackColor = $True
$gui_Exec_Button.add_Click($guiExecute) ##Event occurs, executes code from the previous section##

$gui_Execute_Group.Controls.Add($gui_Exec_Button)

$gui_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 35
$gui_Comm_StringBox.Location = $System_Drawing_Point
$gui_Comm_StringBox.Name = "gui_Comm_StringBox"
$gui_Comm_StringBox.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 310
$gui_Comm_StringBox.Size = $System_Drawing_Size
$gui_Comm_StringBox.TabIndex = 0

$gui_Execute_Group.Controls.Add($gui_Comm_StringBox)


$gui_Descript_Group.Anchor = 13

$gui_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 94
$gui_Descript_Group.Location = $System_Drawing_Point
$gui_Descript_Group.Name = "gui_Descript_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 240
$System_Drawing_Size.Width = 518
$gui_Descript_Group.Size = $System_Drawing_Size
$gui_Descript_Group.TabIndex = 1
$gui_Descript_Group.TabStop = $False
$gui_Descript_Group.Text = "Command Description/Options"

$guiPage.Controls.Add($gui_Descript_Group)
$gui_Descript_Text.Anchor = 13
$gui_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$gui_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$gui_Descript_Text.Location = $System_Drawing_Point
$gui_Descript_Text.Name = "gui_Descript_Text"
$gui_Descript_Text.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 110
$System_Drawing_Size.Width = 505
$gui_Descript_Text.Size = $System_Drawing_Size
$gui_Descript_Text.TabIndex = 0
$gui_Descript_Text.Text = ""

$gui_Descript_Group.Controls.Add($gui_Descript_Text)


$gui_Comm_Group.Anchor = 13

$gui_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$gui_Comm_Group.Location = $System_Drawing_Point
$gui_Comm_Group.Name = "gui_Comm_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 59
$System_Drawing_Size.Width = 518
$gui_Comm_Group.Size = $System_Drawing_Size
$gui_Comm_Group.TabIndex = 0
$gui_Comm_Group.TabStop = $False
$gui_Comm_Group.Text = "Available Commands:"

$guiPage.Controls.Add($gui_Comm_Group)
$gui_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0
$gui_Comm_Drop.DropDownStyle = 2
$gui_Comm_Drop.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$gui_Comm_Drop.Location = $System_Drawing_Point
$gui_Comm_Drop.Name = "gui_Comm_Drop"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 183
$gui_Comm_Drop.Size = $System_Drawing_Size
$gui_Comm_Drop.TabIndex = 0
$gui_Comm_Drop.add_SelectionChangeCommitted($guiCommandChanged) ##Event occurs, executes code from the previous section##

$gui_Comm_Group.Controls.Add($gui_Comm_Drop)
##End code for all GUI objects on GUI memory tab

##Start code for all GUI objects on Networking tab
$netPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$netPage.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$netPage.Location = $System_Drawing_Point
$netPage.Name = "netPage"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$netPage.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 597
$System_Drawing_Size.Width = 531
$netPage.Size = $System_Drawing_Size
$netPage.TabIndex = 5
$netPage.Text = "Networking"

$alllTab.Controls.Add($netPage)
$net_Execute_Group.Anchor = 15

$net_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 340
$net_Execute_Group.Location = $System_Drawing_Point
$net_Execute_Group.Name = "net_Execute_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 251
$System_Drawing_Size.Width = 518
$net_Execute_Group.Size = $System_Drawing_Size
$net_Execute_Group.TabIndex = 2
$net_Execute_Group.TabStop = $False
$net_Execute_Group.Text = "Command Execution"

$netPage.Controls.Add($net_Execute_Group)
$net_Comm_Output.Anchor = 15
$net_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$net_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 62
$net_Comm_Output.Location = $System_Drawing_Point
$net_Comm_Output.Name = "net_Comm_Output"
$net_Comm_Output.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 183
$System_Drawing_Size.Width = 505
$net_Comm_Output.Size = $System_Drawing_Size
$net_Comm_Output.TabIndex = 2
$net_Comm_Output.Text = ""

$net_Execute_Group.Controls.Add($net_Comm_Output)


$net_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 341
$System_Drawing_Point.Y = 35
$net_Exec_Button.Location = $System_Drawing_Point
$net_Exec_Button.Name = "net_Exec_Button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 87
$net_Exec_Button.Size = $System_Drawing_Size
$net_Exec_Button.TabIndex = 1
$net_Exec_Button.Text = "Execute"
$net_Exec_Button.UseVisualStyleBackColor = $True
$net_Exec_Button.add_Click($netExecute) ##Event occurs, executes code from the previous section##

$net_Execute_Group.Controls.Add($net_Exec_Button)

$net_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 35
$net_Comm_StringBox.Location = $System_Drawing_Point
$net_Comm_StringBox.Name = "net_Comm_StringBox"
$net_Comm_StringBox.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 310
$net_Comm_StringBox.Size = $System_Drawing_Size
$net_Comm_StringBox.TabIndex = 0

$net_Execute_Group.Controls.Add($net_Comm_StringBox)


$net_Descript_Group.Anchor = 13

$net_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 94
$net_Descript_Group.Location = $System_Drawing_Point
$net_Descript_Group.Name = "net_Descript_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 240
$System_Drawing_Size.Width = 518
$net_Descript_Group.Size = $System_Drawing_Size
$net_Descript_Group.TabIndex = 1
$net_Descript_Group.TabStop = $False
$net_Descript_Group.Text = "Command Description/Options"

$netPage.Controls.Add($net_Descript_Group)
$net_Descript_Text.Anchor = 13
$net_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$net_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$net_Descript_Text.Location = $System_Drawing_Point
$net_Descript_Text.Name = "net_Descript_Text"
$net_Descript_Text.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 110
$System_Drawing_Size.Width = 505
$net_Descript_Text.Size = $System_Drawing_Size
$net_Descript_Text.TabIndex = 0
$net_Descript_Text.Text = ""

$net_Descript_Group.Controls.Add($net_Descript_Text)


$net_Comm_Group.Anchor = 13

$net_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$net_Comm_Group.Location = $System_Drawing_Point
$net_Comm_Group.Name = "net_Comm_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 59
$System_Drawing_Size.Width = 518
$net_Comm_Group.Size = $System_Drawing_Size
$net_Comm_Group.TabIndex = 0
$net_Comm_Group.TabStop = $False
$net_Comm_Group.Text = "Available Commands:"

$netPage.Controls.Add($net_Comm_Group)
$net_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0
$net_Comm_Drop.DropDownStyle = 2
$net_Comm_Drop.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$net_Comm_Drop.Location = $System_Drawing_Point
$net_Comm_Drop.Name = "net_Comm_Drop"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 183
$net_Comm_Drop.Size = $System_Drawing_Size
$net_Comm_Drop.TabIndex = 0
$net_Comm_Drop.add_SelectionChangeCommitted($netCommandChanged) ##Event occurs, executes code from the previous section##

$net_Comm_Group.Controls.Add($net_Comm_Drop)
##End code for all GUI objects on Networking tab

##Start code for all GUI objects on Registry Tab
$registryPage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$registryPage.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$registryPage.Location = $System_Drawing_Point
$registryPage.Name = "registryPage"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$registryPage.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 597
$System_Drawing_Size.Width = 531
$registryPage.Size = $System_Drawing_Size
$registryPage.TabIndex = 6
$registryPage.Text = "Registry"

$alllTab.Controls.Add($registryPage)
$reg_Execute_Group.Anchor = 15

$reg_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 340
$reg_Execute_Group.Location = $System_Drawing_Point
$reg_Execute_Group.Name = "reg_Execute_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 251
$System_Drawing_Size.Width = 518
$reg_Execute_Group.Size = $System_Drawing_Size
$reg_Execute_Group.TabIndex = 2
$reg_Execute_Group.TabStop = $False
$reg_Execute_Group.Text = "Command Execution"

$registryPage.Controls.Add($reg_Execute_Group)
$reg_Comm_Output.Anchor = 15
$reg_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$reg_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 62
$reg_Comm_Output.Location = $System_Drawing_Point
$reg_Comm_Output.Name = "reg_Comm_Output"
$reg_Comm_Output.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 183
$System_Drawing_Size.Width = 505
$reg_Comm_Output.Size = $System_Drawing_Size
$reg_Comm_Output.TabIndex = 2
$reg_Comm_Output.Text = ""

$reg_Execute_Group.Controls.Add($reg_Comm_Output)


$reg_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 341
$System_Drawing_Point.Y = 35
$reg_Exec_Button.Location = $System_Drawing_Point
$reg_Exec_Button.Name = "reg_Exec_Button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 87
$reg_Exec_Button.Size = $System_Drawing_Size
$reg_Exec_Button.TabIndex = 1
$reg_Exec_Button.Text = "Execute"
$reg_Exec_Button.UseVisualStyleBackColor = $True
$reg_Exec_Button.add_Click($regExecute) ##Event occurs, executes code from the previous section##

$reg_Execute_Group.Controls.Add($reg_Exec_Button)

$reg_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 35
$reg_Comm_StringBox.Location = $System_Drawing_Point
$reg_Comm_StringBox.Name = "reg_Comm_StringBox"
$reg_Comm_StringBox.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 310
$reg_Comm_StringBox.Size = $System_Drawing_Size
$reg_Comm_StringBox.TabIndex = 0

$reg_Execute_Group.Controls.Add($reg_Comm_StringBox)


$reg_Descript_Group.Anchor = 13

$reg_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 94
$reg_Descript_Group.Location = $System_Drawing_Point
$reg_Descript_Group.Name = "reg_Descript_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 240
$System_Drawing_Size.Width = 518
$reg_Descript_Group.Size = $System_Drawing_Size
$reg_Descript_Group.TabIndex = 1
$reg_Descript_Group.TabStop = $False
$reg_Descript_Group.Text = "Command Description/Options"

$registryPage.Controls.Add($reg_Descript_Group)
$reg_Descript_Text.Anchor = 13
$reg_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$reg_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$reg_Descript_Text.Location = $System_Drawing_Point
$reg_Descript_Text.Name = "reg_Descript_Text"
$reg_Descript_Text.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 110
$System_Drawing_Size.Width = 505
$reg_Descript_Text.Size = $System_Drawing_Size
$reg_Descript_Text.TabIndex = 0
$reg_Descript_Text.Text = ""

$reg_Descript_Group.Controls.Add($reg_Descript_Text)


$reg_Comm_Group.Anchor = 13

$reg_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$reg_Comm_Group.Location = $System_Drawing_Point
$reg_Comm_Group.Name = "reg_Comm_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 59
$System_Drawing_Size.Width = 518
$reg_Comm_Group.Size = $System_Drawing_Size
$reg_Comm_Group.TabIndex = 0
$reg_Comm_Group.TabStop = $False
$reg_Comm_Group.Text = "Available Commands:"

$registryPage.Controls.Add($reg_Comm_Group)
$reg_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0
$reg_Comm_Drop.DropDownStyle = 2
$reg_Comm_Drop.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$reg_Comm_Drop.Location = $System_Drawing_Point
$reg_Comm_Drop.Name = "reg_Comm_Drop"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 183
$reg_Comm_Drop.Size = $System_Drawing_Size
$reg_Comm_Drop.TabIndex = 0
$reg_Comm_Drop.add_SelectionChangeCommitted($regCommandChanged) ##Event occurs, executes code from the previous section##

$reg_Comm_Group.Controls.Add($reg_Comm_Drop)
##End code for all GUI objects on Registry tab

##Start code for all GUI objects on malware tab
$malwarePage.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$malwarePage.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$malwarePage.Location = $System_Drawing_Point
$malwarePage.Name = "malwarePage"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$malwarePage.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 597
$System_Drawing_Size.Width = 531
$malwarePage.Size = $System_Drawing_Size
$malwarePage.TabIndex = 7
$malwarePage.Text = "Malware"

$alllTab.Controls.Add($malwarePage)
$mal_Execute_Group.Anchor = 15

$mal_Execute_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 340
$mal_Execute_Group.Location = $System_Drawing_Point
$mal_Execute_Group.Name = "mal_Execute_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 251
$System_Drawing_Size.Width = 518
$mal_Execute_Group.Size = $System_Drawing_Size
$mal_Execute_Group.TabIndex = 2
$mal_Execute_Group.TabStop = $False
$mal_Execute_Group.Text = "Command Execution"

$malwarePage.Controls.Add($mal_Execute_Group)
$mal_Comm_Output.Anchor = 15
$mal_Comm_Output.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$mal_Comm_Output.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 62
$mal_Comm_Output.Location = $System_Drawing_Point
$mal_Comm_Output.Name = "mal_Comm_Output"
$mal_Comm_Output.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 183
$System_Drawing_Size.Width = 505
$mal_Comm_Output.Size = $System_Drawing_Size
$mal_Comm_Output.TabIndex = 2
$mal_Comm_Output.Text = ""

$mal_Execute_Group.Controls.Add($mal_Comm_Output)


$mal_Exec_Button.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 341
$System_Drawing_Point.Y = 35
$mal_Exec_Button.Location = $System_Drawing_Point
$mal_Exec_Button.Name = "mal_Exec_Button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 87
$mal_Exec_Button.Size = $System_Drawing_Size
$mal_Exec_Button.TabIndex = 1
$mal_Exec_Button.Text = "Execute"
$mal_Exec_Button.UseVisualStyleBackColor = $True
$mal_Exec_Button.add_Click($malExecute) ##Event occurs, executes code from the previous section##

$mal_Execute_Group.Controls.Add($mal_Exec_Button)

$mal_Comm_StringBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 35
$mal_Comm_StringBox.Location = $System_Drawing_Point
$mal_Comm_StringBox.Name = "mal_Comm_StringBox"
$mal_Comm_StringBox.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 310
$mal_Comm_StringBox.Size = $System_Drawing_Size
$mal_Comm_StringBox.TabIndex = 0

$mal_Execute_Group.Controls.Add($mal_Comm_StringBox)


$mal_Descript_Group.Anchor = 13

$mal_Descript_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 94
$mal_Descript_Group.Location = $System_Drawing_Point
$mal_Descript_Group.Name = "mal_Descript_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 240
$System_Drawing_Size.Width = 518
$mal_Descript_Group.Size = $System_Drawing_Size
$mal_Descript_Group.TabIndex = 1
$mal_Descript_Group.TabStop = $False
$mal_Descript_Group.Text = "Command Description/Options"

$malwarePage.Controls.Add($mal_Descript_Group)
$mal_Descript_Text.Anchor = 13
$mal_Descript_Text.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$mal_Descript_Text.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$mal_Descript_Text.Location = $System_Drawing_Point
$mal_Descript_Text.Name = "mal_Descript_Text"
$mal_Descript_Text.ReadOnly = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 110
$System_Drawing_Size.Width = 505
$mal_Descript_Text.Size = $System_Drawing_Size
$mal_Descript_Text.TabIndex = 0
$mal_Descript_Text.Text = ""

$mal_Descript_Group.Controls.Add($mal_Descript_Text)


$mal_Comm_Group.Anchor = 13

$mal_Comm_Group.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$mal_Comm_Group.Location = $System_Drawing_Point
$mal_Comm_Group.Name = "mal_Comm_Group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 59
$System_Drawing_Size.Width = 518
$mal_Comm_Group.Size = $System_Drawing_Size
$mal_Comm_Group.TabIndex = 0
$mal_Comm_Group.TabStop = $False
$mal_Comm_Group.Text = "Available Commands:"

$malwarePage.Controls.Add($mal_Comm_Group)
$mal_Comm_Drop.DataBindings.DefaultDataSourceUpdateMode = 0
$mal_Comm_Drop.DropDownStyle = 2
$mal_Comm_Drop.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$mal_Comm_Drop.Location = $System_Drawing_Point
$mal_Comm_Drop.Name = "mal_Comm_Drop"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 183
$mal_Comm_Drop.Size = $System_Drawing_Size
$mal_Comm_Drop.TabIndex = 0
$mal_Comm_Drop.add_SelectionChangeCommitted($malCommandChanged) ##Event occurs, executes code from the previous section##

$mal_Comm_Group.Controls.Add($mal_Comm_Drop)
##End code for all GUI objects on malware page

###
#Code for open file dialog
###
$openFileDialog1.FileName = "openFile"
$openFileDialog1.Filter = "All files (*.*)| *.*"
$openFileDialog1.InitialDirectory = "C:\"
$openFileDialog1.ShowHelp = $False
$openFileDialog1.Title = "Open file"
$openFileDialog1.add_FileOk($handler_openFileDialog1_FileOk)



#Code required for intial gui load
$InitialFormWindowState = $volaGuiForm.WindowState
$volaGuiForm.add_Load($OnLoadForm_StateCorrection)

#Show the GUI
$volaGuiForm.ShowDialog()| Out-Null

} ##End overall GenerateForm function

#Calls the Function
GenerateForm
