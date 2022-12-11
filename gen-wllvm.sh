#!/usr/bin/env bash

cd keyboard/lot60-ble
make clean
genbc /home/mjshen/RTOSExploration/bitcode-db/nrf52-keyboard -c "make -j$(nproc)"
