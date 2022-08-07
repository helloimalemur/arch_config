#!/bin/bash
iwctl station wlan0 disconnect
iwctl station wlan0 scan
sleep 3s
iwctl --passphrase 'whatever' station wlan0 connect F2_EXT
sleep 2s
dhclient
