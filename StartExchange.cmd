echo on

set CatalogExchange=D:\Data\1C\ISN\UMS\
set StartExchange="C:\Program Files (x86)\1cv8\8.3.7.2027\bin\1cv8.exe" ENTERPRISE /FD:\Data\1C\ISN\UMS\04 /NExchange /DisableStartupMessages

set loglist=%CatalogExchange%log.txt
set FlagKonfig=%CatalogExchange%FlagKonfig.tmp

echo %DATE% %TIME% -- Запуск cmd >> %loglist%
if not exist %FlagKonfig% (
	
	
	echo %DATE% %TIME% -- Начало выполнения обмена >> %loglist%
	%StartExchange%
	echo %DATE% %TIME% -- Завершение обмена >> %loglist%
	

) else (

	echo %DATE% %TIME% -- Обмен уже стартован! >> %loglist%

)
