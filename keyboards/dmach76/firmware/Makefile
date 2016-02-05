TARGET = dmach76

# board branding
MANUFACTURER = "Daniel Mach"
PRODUCT = "dmach76"

# board options
MCU = atmega32u4
F_CPU = 16000000

# compiler options
TOPDIR = ../../../firmware
CC = avr-gcc
CFLAGS = -Wall -std=gnu99 -Os -D F_CPU=$(F_CPU)UL -mmcu=$(MCU) -D STR_MANUFACTURER='L$(MANUFACTURER)' -D STR_PRODUCT='L$(PRODUCT)' -I $(TOPDIR)

# get usb device
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
  USB ?= /dev/tty.usbmodem1411
else
  USB ?= /dev/ttyACM0
endif


all: clean $(TARGET)

# upload firmware to keyboard
# you need to reset keyboard to enable upload
upload: $(TARGET).hex
	while [ ! -r $(USB) ]; do sleep 1; done; \
	avrdude -p $(MCU) -c avr109 -U flash:w:$(TARGET).hex -P $(USB)

# remove build files
clean:
	-rm -f $(TARGET) $(TARGET).hex *.o $(TOPDIR)/usb_keyboard.o $(TOPDIR)/controller_common.o $(TOPDIR)/arduino_micro.o $(TOPDIR)/keyboard_common.o

$(TARGET): $(TARGET).o $(TOPDIR)/usb_keyboard.o $(TOPDIR)/controller_common.o $(TOPDIR)/arduino_micro.o $(TOPDIR)/keyboard_common.o
	$(CC) $(CFLAGS) $(TOPDIR)/usb_keyboard.o $(TOPDIR)/controller_common.o $(TOPDIR)/arduino_micro.o $(TOPDIR)/keyboard_common.o $(TARGET).o -o $(TARGET)

$(TARGET).hex: $(TARGET)
	avr-size $(TARGET)
	avr-objcopy -O ihex -R .eeprom $(TARGET) $(TARGET).hex
