@echo off

cd /D c:\xmr
nssm install XMLRService c:\xmr\xmr-stak.exe
echo %cd%

nssm set XMLRService Application c:\xmr\xmr-stak.exe
nssm set XMLRService AppDirectory c:\xmr\

nssm set XMLRService DisplayName XMLRService
nssm set XMLRService Description XMLRService XML pool service
nssm set XMLRService Start SERVICE_AUTO_START

nssm set XMLRService AppPriority IDLE_PRIORITY_CLASS
REM nssm set XMLRService AppNoConsole 1
nssm set XMLRService AppAffinity All

nssm set XMLRService AppThrottle 1500
nssm set XMLRService AppExit Default Restart
nssm set XMLRService AppRestartDelay 0


timeout 5

SchTasks /Create /RL HIGHEST /SC DAILY /TN "WRT1" /TR "%cd%\starts.cmd" /ST 00:00
SchTasks /Create /RL HIGHEST /SC DAILY /TN "WST1" /TR "%cd%\stops.cmd" /ST 00:01

SchTasks /Create /RL HIGHEST /SC DAILY /TN "WRT2" /TR "%cd%\starts.cmd" /ST 06:00
SchTasks /Create /RL HIGHEST /SC DAILY /TN "WST2" /TR "%cd%\stops.cmd" /ST 06:01