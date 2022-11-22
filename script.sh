#!/bin/bash

echo "Conecte ARDUINO UNO a su PC con los dos pines conectados. Luego pulse ENTER."
read
echo "Retire el puente que conecta los dos pines. Luego pulse ENTER."
read
echo "Restableciendo su atmega16u2 al firmware predeterminado..."
dfu-programmer atmega16u2 erase
dfu-programmer atmega16u2 flash --suppress-bootloader-mem Arduino-COMBINED-dfu-usbserial-atmega16u2-Uno-Rev3.hex
dfu-programmer atmega16u2 reset
echo ""
echo "Desenchufe ARDUINO del PC y vuelva a enchufarlo. Luego pulse ENTER."
read
echo "Cargue un código en su ARDUINO utilizando ARDUINO IDE. Luego pulse ENTER."
read
echo "Conecte los dos pines de su ARDUINO. Luego pulse ENTER."
read
echo "Retire el puente que conecta los dos pines. Luego pulse ENTER."
read
echo "Escribiendo el firmware HID Keyboard en su atmega16u2..."
dfu-programmer atmega16u2 erase
dfu-programmer atmega16u2 flash Arduino-keyboard-0.3.hex
dfu-programmer atmega16u2 reset
echo ""
echo "¡Listo!"
