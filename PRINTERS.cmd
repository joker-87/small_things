@ECHO OFF
COLOR F0
TITLE cambiar impresora de aplicativos #beta
CLS
:MENU
ECHO.
ECHO ......................................................
ECHO Press to select the desired printer.
ECHO ......................................................
ECHO.
ECHO 1 - utilizar impresora WS-SEH-090
ECHO 2 - utilizar impresora WS-SEH-092
ECHO 3 - utilizar impresora WS-SEH-093
ECHO 4 - utilizar impresora WS-SEH-098
ECHO 5 - utilizar impresora WS-SEH-103
ECHO 6 - EXIT
ECHO.
SET /P M=Type 1, 2, 3, 4, or 5 then press ENTER:
IF %M%==1 CALL :SEH090
IF %M%==2 CALL :SEH092
IF %M%==3 CALL :SEH093
IF %M%==4 CALL :SEH098
IF %M%==5 CALL :SEH103
IF %M%==6 CALL :EXIT
:SEH090
net use lpt1 /d
net use lpt1 \\192.168.1.26\11.90
cls
CALL :MENU
:SEH092
net use lpt1 /d
net use lpt1 \\192.168.1.26\11.92
cls
CALL :MENU
:SEH093
net use lpt1 /d
net use lpt1 \\192.168.1.26\11.93
cls
CALL :MENU
:SEH098
net use lpt1 /d
net use lpt1 \\192.168.1.26\11.98
cls
CALL :MENU
:SEH103
net use lpt1 /d
net use lpt1 \\192.168.1.26\11.103
cls
CALL :MENU
:EXIT
exit