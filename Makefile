#####################################################
# Makefile containing shortcut commands for project #
#####################################################
# 
#  Make should be installed with XCode dev tools.
#  If not, run `xcode-select --install` in Terminal to install.

# Drops you into a running container running bash
.PHONY: run-debug
run-debug:
	docker build -t github-actions-walkthrough . && docker run -it --rm github-actions-walkthrough /bin/bash

.PHONY: run-detached
run-detached:
	docker build -t github-actions-walkthrough . && docker run -dit --rm github-actions-walkthrough 

.PHONY: clean-run-detached
clean-run-detached:
	docker build -t github-actions-walkthrough --no-cache . && docker run -dit --rm github-actions-walkthrough 

	