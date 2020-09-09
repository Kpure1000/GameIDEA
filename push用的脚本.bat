@echo check for Git...
git version
@echo **************************
@echo if Git's not been installed, please EXIT.
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