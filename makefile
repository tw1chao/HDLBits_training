
TARGET = build

CC = iverilog

RUN = vvp

source += test_bench.v
source += module/alu.v


all: 
	@${CC} -o ${TARGET} ${source}

run: 
	@${RUN} ${TARGET}

clean:
	@rm ${TARGET}