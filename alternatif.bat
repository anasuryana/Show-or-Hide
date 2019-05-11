@echo off
title Assalaamu'alaykum warahmatullahi wabarakaatuh

echo 					  BBBBBBBBBB  
echo 					BB          BB
echo 					BB          BB
echo 					BB          BB
echo 					BB         BB
echo 		   			BBBBBBBBBBB
echo 					BBBBBBBBBBB
echo 					BB          BB
echo 					BB          BB
echo 					BB          BB
echo 					BB         BB
echo 					BBBBBBBBBBB
echo .-------------------------------------------------------------------------.
echo Silahkan pilih drive yang file file nya ingin dimunculkan atau dihilangkan

set /p id="Drive :  "
set /p cmh="Dimunculkan atau dihilangkan  (m/h):  "
set mh=rrr
IF EXIST %id%:\ (
	echo Kamu memilih drive %id%
	echo Sabar ya, sedang kami proses
	CD /d %id%:\
	IF %cmh%==m (
		attrib *.* -h -s /s /d
		echo Berhasil dimunculkan, silahkan periksa di File Explorer
	) ELSE (
		attrib *.* +h +s /s /d
		echo Berhasil dihilangkan, silahkan periksa di File Explorer
	)			
	DIR
) ELSE (
	ECHO Drive yang dimaksud tidak kami temukan
)

pause