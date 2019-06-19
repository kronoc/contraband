# CONTRABAND

*A simple and brittle privacy scanner for RTL_SDR, Network, WLAN and Bluetooth*

## Should I use this software?

**No, it is not finished yet. These notes are, in part, design notes and reminders of how the software is intended to work when it is complete.**


## What is Contraband?


Contraband is a simple bash script. It mananges a number of other pieces of software in order to scan local RF and network traffic for potential activity which may impact on your privacy. The intended use case is for when spending time in unfamilar locations such as hotels, holiday rentals, cafés or other public places. It can be run in a silent, headless, mode or with varying degrees of verbose output. 

Features include:

- using an RTL_SDR dongle to scan for 
  - hidden data devices such as motion detectors and security sensors
  - hidden microphones and bugs
- using the local network to
  - scan for any unexpected hosts
  - checking latency to a known host
  - checking the route to a known host
- using bluetooth
  - to log all locally visible bluetooth devices
- using the local network to scan for
  - suspicious traffic which may indicate hidden wifi cameras or microphones
  - voice assistants
- using a wireless network card
  - to scan for all nearby access points and wireless devices, including any hidden ones

Gathered data is dumped to the local file system for later inspection.

Types of scans can be disabled/enables using command line options.

**Did I mention the script is incredibly brittle?**

## Hardware Dependencies

- An RTL-SDR USB Dongle and suitable antenna
- A network card or USB dongle
- A bluetooth card or USB dongle

## Software Dependecies
- rtl_433
- rtl_power
- hci-util
- tshark


