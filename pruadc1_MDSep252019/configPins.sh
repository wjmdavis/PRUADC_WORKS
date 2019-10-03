#!/bin/sh

# Configure pins for PRUADC example by Greg Raven

#   Chip Select:  P9.27 pr1_pru0_pru_r30_5
#   MOSI:         P9.29 pr1_pru0_pru_r30_1
#   MISO:         P9.28 pr1_pru0_pru_r31_3
#   SPI CLK:      P9.30 pr1_pru0_pru_r30_2
#   Sample Clock: P8.46 pr1_pru1_pru_r30_1  (testing only)

#   P9.27  == Chip Select
config-pin P9_27 pruout
config-pin -q P9_27

#   P9.29  == MOSI
config-pin P9_29 pruout
config-pin -q P9_29

#   P9.28  == MISO
config-pin P9_28 pruin
config-pin -q P9_28

#   P9.30  == SPI CLK
config-pin P9_30 pruout
config-pin -q P9_30

#   p8_46 == Sample Clock (testing only)
config-pin P8_46 pruout
config-pin -q P8_46


