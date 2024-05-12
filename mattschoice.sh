#!/bin/bash
# Clone latest version of Xtreme-Firmware
git clone --recursive --jobs 8 https://github.com/Flipper-XFW/Xtreme-Firmware

## Placeholder for an area to download and move apps into the Firmware before build
##
##
##
# cd Xtreme-Firmware/ && ./fbt updater_package
# cd ..

## Create all the current necessary structure
mkdir -p dumps/generic dumps/badusb dumps/infrared dumps/subghz dumps/scripts dumps/nfc

## Flipper Zero Scripts by jktech
git clone https://github.com/jkctech/Flipper-Zero-Scripts
cd Flipper-Zero-Scripts && git checkout 264be519831232be95ca41a1c561a00795593d0b
mv badusb ../dumps/badusb/jkctech
mv infrared ../dumps/infrared/jkctech
mv subghz ../dumps/subghz/jkctech
cd ..;rm -rf Flipper-Zero-Scripts

## Flipper zero touchtunes by jimilinuxguy
git clone https://github.com/jimilinuxguy/flipperzero-touchtunes
cd flipperzero-touchtunes && git checkout 5d9bc9ad4b656b558c8ed8a561bf69561dc4288b
mkdir ../dumps/subghz/touchtunes
mv raw pin brute ../dumps/subghz/touchtunes
cd ..;rm -rf flipperzero-touchtunes

## OOK Brutefroce by tobiabocchi
git clone https://github.com/tobiabocchi/flipperzero-bruteforce
cd flipperzero-bruteforce && git checkout a6ecb45ba259591c14c2f6c169ce069659deb5e2 && cd ..
mkdir dumps/subghz/OOK
mv flipperzero-bruteforce/sub_files dumps/subghz/OOK
mv flipperzero-bruteforce/flipperzero-bruteforce.py dumps/generic/scripts/bruteforce-OOK.py
rm -rf flipperzero-bruteforce

## ConcerBracelets sub file
git clone https://github.com/MakeTotalSense/Flipper-Concert-bracelets
7z x Flipper-Concert-bracelets/Concert_bracelet\(unknown\ action\).zip
mv Concert_bracelet\(unknown\ action\).sub dumps/subghz/ConcertBracelets
rm -rf Flipper-Concert-bracelets


## Flipper zero OS specific payloads by aleff
git clone https://github.com/aleff-github/my-flipper-shits/
cd my-flipper-shits && git checkout a533b938de09550826b57117bc8fbad4b3fa4dc9
mkdir ../dumps/generic/payloads
mv iOS Windows GNU-Linux ../dumps/generic/payloads
cd ..;rm -rf my-flipper-shits

# FlipperAmiibo nfc files by Gioman101
git clone https://github.com/Gioman101/FlipperAmiibo
rm -rf FlipperAmiibo/.git && mv FlipperAmiibo dumps/nfc/Amiibo

# Big IR database by logickworkshop
git clone https://github.com/logickworkshop/Flipper-IRDB
rm -rf Flipper-IRDB/.* && mv Flipper-IRDB dumps/infrared/irdb

## BadUSB payloads by jakoby
git clone https://github.com/I-Am-Jakoby/Flipper-Zero-BadUSB/
cd Flipper-Zero-BadUSB && git checkout 51c3767407d1e6713c77e55d47447644e33d881d
mv Payloads ../dumps/badusb/jakoby
cd ..;rm -rf Flipper-Zero-BadUSB

# Another badusb payload repo by falsephilosopher
git clone https://github.com/FalsePhilosopher/badusb
rm -rf badusb/.* && mv badusb dumps/badusb/falsephilo

### MUSIC
mkdir -p dumps/apps_data/music_player
git clone https://github.com/neverfa11ing/FlipperMusicRTTTL
rm -rf FlipperMusicRTTTL/.* && mv FlipperMusicRTTTL/ dumps/apps_data/music_player

## MISC
## goodies from wetox-team
git clone https://github.com/wetox-team/flipperzero-goodies
mv flipperzero-goodies/intercom-keys/ dumps/subghz
mv flipperzero-goodies/scripts/ dumps/scripts/goodies
rm -rf flipperzero-goodies

# inter-com Starnew by g1uten
git clone https://github.com/GlUTEN-BASH/Flipper-Starnew
rm -rf Flipper-Starnew/.* && mv Flipper-Starnew/ dumps/subghz/intercom-keys/starnew/more

# Getting just a few folders from Flipper by UberGuidoZ
git clone https://github.com/UberGuidoZ/Flipper UberGuidoZ
mv UberGuidoZ/Sub-GHz/ dumps/subghz/uberguidoz
mv UberGuidoZ/Wav_Player/ dumps/wav_player
rm -rf UberGuidoZ

# Downloading toolbox with a bunch of scripts to generate data
git clone https://github.com/evilpete/flipper_toolbox toolbox
mv toolbox dumps/scripts/