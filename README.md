# Webduino

Designed for the Samsung Artik 520 and similar devices, automates the functions of the command line using shell scripts and arduino. 
Currently only tested with the Artik 520, but would likely work with 720 and 1020

File Descriptions listed below.

# audio_playback.sh
playback a file, set in the config.txt file

# audio_record.sh
record a file, set in the config.txt file

# audio config file
line 7 = playback/record path
line 4 = time of recording
line 10 = volume %

# bt.connect_default.sh
default connection for most devices

# bt.connect_phone
connection specifically when using a phone

# bt.find_devices.sh
find available bluetooth devices, must be run before pairing

# bt.pair.sh
pair bluetooth device with artik

# bluetooth config
line 4 = MAC address 
line 6 = bluetooth key
line 8 = ip address for phone connection

# p2p_con2.sh
connection for second artik device

# setup_main.sh
main artik device connection

# p2p config
Wifi Direct (P2P) Connection Setup Information
Vi help: (https://www.cs.colostate.edu/helpdocs/vi.html)

## vi /etc/wpa_supplicant/wpa_supplicant.conf

-Edit parameters to match those below: (if using another Artik Device)

ap_scan=2
ctrl_interface=/var/run/wpa_supplicant
update_config=0
device_name=Direct-p2p-mode
device_type=1-0050F204-1
config_methods=virtual_push_button physical_display keypad
p2p_go_intent=7
country=US
p2p_go_max_inactivity=600
p2p_go_ht40=1
disassoc_low_ack=1
p2p_listen_reg_class=81
p2p_listen_channel=36
driver_param=use_p2p_group_interface=1

-Write changes and exit
-Reset board to use new config

----------------------------------------------------------------------------
Link Android Cellphone to Main Board

ON PHONE:
Settings --> Wifi --> Add new device

-Select <SSID> or identifier for the main board (Something like DIRECT-xx)

-Input <PASSPHRASE> that you got from the main board

-Configure the IP on the phone:
IP address[192.168.1.15]
Default gateway[192.168.1.1]

On ARTIK:
Test connection:

## ping 192.168.1.15

# Client_Setup.txt
Wifi Client Setup
Vi Help (https://www.cs.colostate.edu/helpdocs/vi.html)

Configuring the wpa_supplicant.conf file:

## cd /etc/wpa_supplicant

wpa_passphrase "WIFI_SSID" "PASSWORD_FOR_WIFI" >> wpa_supplicant.conf

## vi wpa_supplicant.conf

-You may want to delete the unencrypted password inside the wpa_supplicant file

-Make sure that the first two lines have the following:

ctrl_interface=/var/run/wpa_supplicant
ctrl_interface_group=wheel

## reboot

-write open files and reset your system



# wifi_client.sh
connect the artik to specified wifi ssid

# disable_wap.sh
disable LAN server

# enable_wap.sh
enable LAN server (ssid and password are defined in hostapd.conf) [see LAN-Setup for more details]

# LAN-Setup.txt
explains setup of config files for lan server 

# Utility and Other
these are all WIP functions, currently under development, use at your own risk.

# Note:
any functions utilizing xml and json files are not yet functional due to an unsupported command on the artik bash. 
currently xmlstarlet is not functional on artik platforms.







