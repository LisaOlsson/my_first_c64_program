PROGRAM := math
SOURCE := src/$(PROGRAM).bas
OUTPUT := build/$(PROGRAM).prg

$(OUTPUT): $(SOURCE)
	mkdir -p build
	petcat -w2 -o $(OUTPUT) -- $(SOURCE)

.PHONY: run clean

run: $(OUTPUT)
	x64sc -autostartprgmode 1 -autostart $(OUTPUT)

clean:
	rm -rf build