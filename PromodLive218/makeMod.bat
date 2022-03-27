del mod.ff

xcopy ui_mp ..\..\raw\ui_mp /SY
xcopy english ..\..\raw\english /SY
xcopy ui ..\..\raw\ui /SY
xcopy fx ..\..\raw\fx /SY
xcopy sound ..\..\raw\sound /SY
xcopy soundaliases ..\..\raw\soundaliases /SY
xcopy promod ..\..\raw\promod /SY
xcopy images ..\..\raw\images /SY
xcopy maps ..\..\raw\maps /SY
xcopy materials ..\..\raw\materials /SY
xcopy weapons ..\..\raw\weapons /SY
xcopy mp ..\..\raw\mp /SY
xcopy shock ..\..\raw\shock /SY
xcopy xanim ..\..\raw\xanim /SY
xcopy xmodel ..\..\raw\xmodel /SY
xcopy shock ..\..\raw\shock /SY
xcopy readme.txt ..\..\raw /SY
copy /Y mod.csv ..\..\zone_source
cd ..\..\bin
linker_pc.exe -language english -compress -cleanup mod
cd ..\Mods\PromodLive218
copy ..\..\zone\english\mod.ff

pause