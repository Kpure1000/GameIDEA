@echo **************************
@echo This is an AUTO PULL script for GitHub
@echo Author @Kpure1000 https://github.com/Kpure1000
@echo **************************
@echo Check for Git...[if NOT installed, just EXIT]
@echo off
@FOR /F "delims=" %%I IN (
"git.exe" ) DO (
	@if exist %%~$PATH:I (
		@echo DO exist Git 
		@git version
	) else ( echo Git has been not INSTALL or not in PATH.
			@pause	)
	)
@echo **************************
@echo Being READY to PULL!
@pause
@echo **************************
@cd %userprofile%\Desktop
@if exist GameIDEA\ (
	@echo exist GameIDEA folder, pull it down...
	@cd .\GameIDEA\
	@git pull origin master
	@start .
) else (
	@echo NOT exist GameIDEA folder, clone one...
	@git clone https://github.com/Kpure1000/GameIDEA.git
	@cd .\GameIDEA\
	@start .
)
@echo **************************
@echo Done
@pause