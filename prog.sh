pip install esptool

python3 ./esptool-master/esptool.py -p $1 --chip esp32 erase_flash

python3 ./esptool-master/esptool.py -p $1 -b 460800 --before default_reset --after hard_reset --chip esp32 write_flash --flash_mode dio --flash_freq 40m --flash_size 2MB 0x1000 bootloader.bin 0x10000 simple.bin 0x8000 partition-table.bin 

