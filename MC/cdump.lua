local modem = peripheral.wrap("top")
modem.open(3)
modem.transmit(3, 1, "dump")