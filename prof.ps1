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

    Set-Location "D:\Projects\R.Fate\fate-env\Scripts"
    powershell.exe -File "activate"
}
Set-Alias svenv rvenv