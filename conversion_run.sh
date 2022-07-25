#!/bin/bash
#KASHIIF_INAYAT_SOCLAB-INU



echo "=============================================="
echo "----           Library Conversion         ----"
echo "=============================================="

# To build skywater-PDK
# Sky130_fd_sc_hd
cd skywater-pdk
git submodule update --init libraries/$1/latest
make $1

# To generate synopsys libraries
cd vendor/synopsys
make $1

# Replace sc_hd with [sc_hdll, sc_hs, sc_ls or sc_ms] to compile other SC variants

# To place and route sample netlist 
make icc2_console
