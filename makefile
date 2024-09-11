RED=\033[0;31m
GREEN=\033[0;32m
BLUE=\033[0;34m
MAGENTA=\033[0;35m
NC=\033[0m 



digital-test:
	@echo "$(GREEN)Verilog testbench sythesis. $(NC)"
	iverilog -g2012 -o runs/iverilog/decoder.vvp src/decoder_tb.sv src/spi.v src/decoder.v src/b2t.v
	@echo "$(MAGENTA)Creating waveform file. $(NC)"
	vvp -n runs/iverilog/decoder.vvp
