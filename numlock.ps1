Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force -ErrorAction Stop

$wsh = New-Object -ComObject WScript.Shell
while($true){
if ([console]::NumberLock -eq $false) {
$wsh.SendKeys('{NUMLOCK}')
}
Start-Sleep -Seconds 2
}

Set-ItemProperty -Path 'Registry::HKU\.DEFAULT\Control Panel\Keyboard' -Name "InitialKeyboardIndicators" -Value "2" 

Copy-Item "https://ndusvr99.ndu.edu/CASL/enablenumlock.vbs" -Destination "C:\"
Start-Sleep -Seconds 2
Cscript.exe "C:\enablenumlock.vbs"
