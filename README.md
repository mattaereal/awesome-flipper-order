# awesome-flipper-zero's ordered dump (matta's pick)
This repo is an experiment. I tries to compile curated and reproducible sources of information for the Flipper Zero.
It starts by building the latest version of Xtreme Firmware, and then creates, a folder to be uploaded to the SD card.

## Usage
- `mattschoice.sh`: Creates a folder named `dumps` based on the checklist below to be dumped directly into the SD card.
- `awesome-pack-mess.sh`: Creates two folders with `microsd` string, from the awesome-flipperzero-pack to be put inside the SD card.
- `xtreme-build.sh`: Builds the Xtreme-Firmware. Has a placeholder for custom apps.

**Use under your own risk. It's pretty hardcoded.**
**Requirements:** `wget`, `curl`, `7zq`
# TODO
- [ ] Add useful apps outside Xtreme Firmware (I have found none of my liking yet).
- [X] Automatically download latest awesome-fz-pack collection using https://api.github.com/repos/unresolv/awesome-flipperzero-pack/releases
- [ ] Avoid unnecessary building. 
  - [ ] Check for Xtreme Firmware update, pull and build if needed.
  - [ ] Check for awesome-fz-pack updates and update if necessary.
- [ ] Add more custom scripts and configs.

# Integrated repos from awesome flipper zero
- [x] **Databases & Dumps**
  - [x] **Generic scripts/payloads**
    - [x] [`Flipper-Zero-Scripts`](https://github.com/jkctech/Flipper-Zero-Scripts)
    - [x] [`Flipper Toolbox`](https://github.com/evilpete/flipper_toolbox)

  - [x] **Sub-GHz**
    - [x] [`FlipperZero-TouchTunes` Dumps of TouchTune's remote.](https://github.com/jimilinuxguy/flipperzero-touchtunes)
    - [x] [`T119 bruteforcer` Triggers Retekess T119 restaurant pagers.](https://github.com/xb8/t119bruteforcer)
    - [x] [`flipperzero-bruteforce` Generate .sub files to brute force Sub-GHz OOK.](https://github.com/tobiabocchi/flipperzero-bruteforce)
    - [x] [`Flipperzero-Concert-Bracelets` Sub-GHz file to trigger event LED bracelets.](https://github.com/MakeTotalSense/Flipper-Concert-bracelets)
    - [x] From [`UberGuidoZ Playground` Large collection of files, documentation, and dumps of all kinds.](https://github.com/UberGuidoZ/Flipper)
    - [x] [`FlipperZero-Goodies` Intercom keys, scripts, etc.](https://github.com/wetox-team/flipperzero-goodies)
    - [x] [`Flipper-StarNew` Universal Intercom Keys.](https://github.com/GlUTEN-BASH/Flipper-Starnew)

  - [x] **NFC/RFID**
    - [x] [`FlipperAmiibo` Bank vault of Amiibos to Flipper's format.](https://github.com/Gioman101/FlipperAmiibo)
  
  - [x] **Infrared**
    - [x] [`Flipper-IRDB` Many IR dumps for various appliances.](https://github.com/logickworkshop/Flipper-IRDB)

  - [x] **BadUSB**
    - [x] [`My-Flipper-Shits` Free and open-source \[BadUSB\] payloads for Flipper Zero.](https://github.com/aleff-github/my-flipper-shits/)
    - [x] [`Flipper BadUSB Payloads` Collection of payloads formatted to work on the Flipper Zero.](https://github.com/I-Am-Jakoby/Flipper-Zero-BadUSB)
    - [x] [`UNC0V3R3D BadUSB collection` Yet another BadUSB collection.](https://github.com/UNC0V3R3D/Flipper_Zero-BadUsb)
    - [x] [`FalsePhilosophers Flipper BadUSB` Flipper zero community ducky payload repo.](https://github.com/FalsePhilosopher/badusb)

  - [x] **Music**
    - [x] [`FlipperMusicRTTTL` Collection of musics for FlipperZero Music Player.](https://github.com/neverfa11ing/FlipperMusicRTTTL)
    - [x] From [`UberGuidoZ Playground` Large collection of files, documentation, and dumps of all kinds.](https://github.com/UberGuidoZ/Flipper)

