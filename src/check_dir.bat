@echo off

set pathname=%1\*

if exist %pathname% (
	echo TRUE
) else (
	echo FALSE
)
