
Write-Host "          _____________________________________________________________"
Write-Host "         /                                                            /"    
Write-Host "        /                   RDS-CleanUp - Script                     /"
Write-Host "       /____________________________________________________________/"

Write-Host " " 
Write-Host -ForegroundColor Green "Starting Script..."
Start-Sleep -s 3
Write-Host " " 

$tempfolders = Get-ChildItem -Path C:\Users\ -Directory -Force -ErrorAction SilentlyContinue

$tempfolders | foreach {
 Remove-Item -path "C:\Users\$($_.Name)\AppData\Local\Temp" -Recurse -Force -EA SilentlyContinue -Verbose
 }

Write-Host -ForegroundColor Green "Done :-)"
Start-Sleep -s 3
Write-Host " " 
Read-Host