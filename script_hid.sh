#!/bin/bash

echo "Conecte ARDUINO al PC. Luego pulse ENTER."
read
echo "Cargue un código en su ARDUINO utilizando ARDUINO IDE. Luego pulse ENTER."
read
echo "Puentea los dos pines de su ARDUINO. Luego pulse ENTER."
read
echo "Retire el puente que conecta los dos pines. Luego pulse ENTER."
read
echo "Escribiendo el firmware HID Keyboard en su atmega16u2..."
dfu-programmer atmega16u2 erase
dfu-programmer atmega16u2 flash Arduino-keyboard-0.3.hex
dfu-programmer atmega16u2 reset
echo ""
echo "¡Listo!"
