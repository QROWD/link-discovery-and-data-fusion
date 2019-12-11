datasets := $(wildcard datasets/*/.)
interlinking := $(wildcard interlinking/*/.)
fusion := $(wildcard fusion/.)
export := $(wildcard export/*/. )

$(export): $(fusion)
	$(MAKE) -C $@ $(TARGET)

$(fusion): $(interlinking)
	$(MAKE) -C $@ $(TARGET)

$(interlinking): $(datasets)
	$(MAKE) -C $@ $(TARGET)

$(datasets):
	$(MAKE) -C $@ $(TARGET)

.PHONY: $(export) $(fusion) $(interlinking) $(datasets)
