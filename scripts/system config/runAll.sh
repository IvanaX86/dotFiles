#!/usr/bin/env bash

sysConfDir=~/Scripts/system\ config

# system config scripts
bash "$sysConfDir"/exportConfigToGit.sh 
bash "$sysConfDir"/exportDotDesktopToGit.sh
bash "$sysConfDir"/exportHomeDotsToGit.sh
bash "$sysConfDir"/exportScriptsToGit.sh
