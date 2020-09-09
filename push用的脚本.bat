@echo This is an auto push script
@echo @author Kpure1000
@echo **************************
@echo check for Git...[if NOT installed, just EXIT]
@FOR /F "delims=" %%I 
@IN (
"git.exe" ) 
@DO (
	@if exist %%~$PATH:I (
		echo DO exist Git 
		@git version
	) else ( echo Git has been not INSTALL or not in PATH yet.
			@pause	)
	)
@echo **************************
@echo Already going to PUSH!
@pause
@echo **************************
@cd %userprofile%\Desktop
@if exist GameIDEA\ (
	@echo exist GameIDEA folder, pull it down...
	@cd .\GameIDEA\
	@start .
	git add -A
	git commit -m "auto-commit by bat command"
	git push origin master
) else (
	@echo NOT exist GameIDEA folder, clone one...
	git clone https://github.com/Kpure1000/GameIDEA.git
	@cd .\GameIDEA\
	@start .
)
@echo **************************
@pause