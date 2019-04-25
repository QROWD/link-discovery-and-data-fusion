datasets := $(wildcard datasets/*/.)
interlinking := $(wildcard interlinking/*/.)

interlinking: datasets $(interlinking)
$(interlinking):
	$(MAKE) -C $@

datasets: $(datasets)
$(datasets):
	$(MAKE) -C $@

.PHONY: datasets $(datasets)
.PHONY: interlinking $(interlinking)
.PHONY: all
