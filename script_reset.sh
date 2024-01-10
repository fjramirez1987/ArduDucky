#!/bin/bash

echo "Conecte ARDUINO UNO a su PC con los dos pines puenteados. Luego pulse ENTER."
read
echo "Retire el puente que conecta los dos pines. Luego pulse ENTER."
read
echo "Restableciendo su atmega16u2 al firmware predeterminado..."
dfu-programmer atmega16u2 erase
dfu-programmer atmega16u2 flash --suppress-bootloader-mem Arduino-COMBINED-dfu-usbserial-atmega16u2-Uno-Rev3.hex
dfu-programmer atmega16u2 reset
echo ""
echo "¡Listo!"
