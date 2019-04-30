datasets := $(wildcard datasets/*/.)
interlinking := $(wildcard interlinking/*/.)
fusion := $(wildcard fusion/*/.)
visualization := $(wildcard visualization/. )

visualization: datasets interlinking fusion $(visualization)
$(visualization):
	$(MAKE) -C $@ $(TARGET)

fusion: datasets interlinking $(fusion)
$(fusion):
	$(MAKE) -C $@ $(TARGET)

interlinking: datasets $(interlinking)
$(interlinking):
	$(MAKE) -C $@ $(TARGET)

datasets: $(datasets)
$(datasets):
	$(MAKE) -C $@ $(TARGET)

.PHONY: all interlinking $(interlinking) datasets $(datasets) visualization $(visualization) fusion $(fusion)
