#!/bin/bash
# Clone latest version of Xtreme-Firmware
git clone --recursive --jobs 8 https://github.com/Flipper-XFW/Xtreme-Firmware

## Placeholder for an area to download and move apps into the Firmware before build
## cd git clone git-with-apps
## mv apps Xtreme-Firmware/applications...
##
cd Xtreme-Firmware/ && ./fbt updater_package