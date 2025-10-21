BUILD_TIME      := $(shell LC_TIME=zh_CN.UTF-8 date +"%Y-%m-%d %H:%M:%S %A")
#BUILD_TIME            := $(shell date +%Y-%m-%dT%H:%M:%S%z 2>/dev/null || powershell -Command "Get-Date -Format o")
AUTHOR          := Zeusro

auto_commit:
	git add .
	# make AUTHOR="openAI"
	git commit -am "$(BUILD_TIME) —by $(AUTHOR)"
	git pull
	git push

new:
	mkdir -p history/$(shell date +%Y-%m)
	cp history/template.md history/$(shell date +%Y-%m)/$(shell date +%Y-%m-%d).md
