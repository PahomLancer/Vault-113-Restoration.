@echo off
mkdir server
move /Y fallout13.dmb server/fallout13.dmb
move /Y fallout13.rsc server/fallout13.rsc
move /Y fallout13.dyn.rsc server/fallout13.dyn.rsc
xcopy "goon/browserassets" "server/goon/browserassets" /E /Y