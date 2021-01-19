set-location C:\
$Shell.WindowTitle=”fuxsocy”
$Shell = $Host.UI.RawUI
$shell.BackgroundColor = “Black”
$shell.ForegroundColor = “Gray”
Clear-Host
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


Set-PSReadlineOption -Color @{
    "Command" = [ConsoleColor]::Green
    "Parameter" = [ConsoleColor]::Gray
    "Operator" = [ConsoleColor]::Magenta
    "Variable" = [ConsoleColor]::White
    "String" = [ConsoleColor]::Yellow
    "Number" = [ConsoleColor]::Blue
    "Type" = [ConsoleColor]::Cyan
    "Comment" = [ConsoleColor]::DarkCyan
}
# Dracula Prompt Configuration
Import-Module posh-git
$GitPromptSettings.DefaultPromptPrefix.Text = "$([char]0x2192) " # arrow unicode symbol
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.DefaultPromptPath.ForegroundColor =[ConsoleColor]::Cyan
$GitPromptSettings.DefaultPromptSuffix.Text = "$([char]0x203A) " # chevron unicode symbol
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::Magenta
# Dracula Git Status Configuration
$GitPromptSettings.BeforeStatus.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.BranchColor.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.AfterStatus.ForegroundColor = [ConsoleColor]::Blue


function func_nano {
    
    C:\nano\bin\nano.exe
}
Set-Alias nano func_nano


function func_rfate {
    
    Set-Location "D:\Projects\R.Fate"
    
}
Set-Alias rfate func_rfate



function func_desktop {
    
	Set-Location "C:\Users\GAMER\Desktop"
}
Set-Alias dsk func_desktop



function rvenv {

    D:\Projects\Aesthetic\venv\Scripts\Activate.ps1
}
Set-Alias venv rvenv

function _bot {

    Set-Location D:\Projects\Aesthetic\
}
Set-Alias src _bot


function _run {
	
    py -3.8 D:\Projects\Aesthetic\launcher.py
}
Set-Alias run _run
