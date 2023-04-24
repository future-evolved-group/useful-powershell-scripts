# Clear temporary files
Remove-Item -Path "$env:TEMP\*" -Recurse -Force

# Clear Windows temp files
Remove-Item -Path "$env:windir\temp\*" -Recurse -Force

# Clear system log files
wevtutil.exe cl System /quiet
wevtutil.exe cl Application /quiet
wevtutil.exe cl Security /quiet

# Clear memory dump files
Remove-Item -Path "$env:windir\memory.dmp" -Force

# Clear hibernation file
powercfg.exe /h off

# Clear pagefile
Clear-PageFileAtShutDown

# Clear thumbnails cache
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\Explorer\thumbcache_*" -Recurse -Force

# Clear Recycle Bin
Clear-RecycleBin -Force

# Clear Windows error reporting files
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\WER\*" -Recurse -Force

# Clear Windows upgrade logs
Remove-Item -Path "$env:windir\Logs\WindowsUpdate\*" -Recurse -Force

# Clear WinSxS backup files
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase /Quiet
