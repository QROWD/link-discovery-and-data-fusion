datasets := $(wildcard datasets/*/.)
interlinking := $(wildcard interlinking/*/.)

interlinking: datasets $(interlinking)
$(interlinking):
	$(MAKE) -C $@ $(TARGET)

datasets: $(datasets)
$(datasets):
	$(MAKE) -C $@ $(TARGET)

.PHONY: all interlinking $(interlinking) datasets $(datasets)
