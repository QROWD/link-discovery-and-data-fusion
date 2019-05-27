datasets := $(wildcard datasets/*/.)
interlinking := $(wildcard interlinking/*/.)
fusion := $(wildcard fusion/*/.)
visualization := $(wildcard visualization/. )

$(visualization): $(fusion)
	$(MAKE) -C $@ $(TARGET)

$(fusion): $(interlinking)
	$(MAKE) -C $@ $(TARGET)

$(interlinking): $(datasets)
	$(MAKE) -C $@ $(TARGET)

$(datasets):
	$(MAKE) -C $@ $(TARGET)

.PHONY: $(visualization) $(fusion) $(interlinking) $(datasets)
