datasets := $(wildcard datasets/*/.)
interlinking := $(wildcard interlinking/*/.)
visualization := $(wildcard visualization/. )

visualization: interlinking datasets $(visualization)
$(visualization):
	$(MAKE) -C $@ $(TARGET)

interlinking: datasets $(interlinking)
$(interlinking):
	$(MAKE) -C $@ $(TARGET)

datasets: $(datasets)
$(datasets):
	$(MAKE) -C $@ $(TARGET)

.PHONY: all interlinking $(interlinking) datasets $(datasets) visualization $(visualization)
