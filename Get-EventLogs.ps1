# Config
$logFileNameApp = "Application"
$logFileNameSec = "Security"
$logFileNameSys = "System" 
$path = "$pwd\"
 
# do not edit
$exportFileName = $logFileNameApp + (hostname) + (get-date -f yyyyMMdd) + ".evt"
$logFile = Get-WmiObject Win32_NTEventlogFile | Where-Object {$_.logfilename -eq $logFileNameApp}
$logFile.backupeventlog($path + $exportFileName)
$exportFileName = $logFileNameSec + (hostname) + (get-date -f yyyyMMdd) + ".evt"
$logFile = Get-WmiObject Win32_NTEventlogFile | Where-Object {$_.logfilename -eq $logFileNameSec}
$logFile.backupeventlog($path + $exportFileName)
$exportFileName = $logFileNameSys + (hostname) + (get-date -f yyyyMMdd) + ".evt"
$logFile = Get-WmiObject Win32_NTEventlogFile | Where-Object {$_.logfilename -eq $logFileNameSys}
$logFile.backupeventlog($path + $exportFileName)