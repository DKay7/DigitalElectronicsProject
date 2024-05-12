!/bin/bash

mkdir -p build
rm -rf build/*
yosys -D LEDS_NR=0 -p "read_verilog counter8bit.v; synth_gowin -json build/counter.json; show"
nextpnr-himbaechel --json build/counter.json --write build/pnrcounter.json --device GW1NR-LV9QN88PC6/I5 --vopt family=GW1N-9C --vopt cst=counter-pins.cst
gowin_pack -d GW1N-9C -o build/counter.fs build/pnrcounter.json
sudo openFPGALoader -b tangnano9k --detect build/counter.fs
sudo openFPGALoader -b tangnano9k build/counter.fs

echo done.