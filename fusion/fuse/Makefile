SOURCES = \
  ../cluster/fusion-sameas-clusters.nt

fused.nt: $(SOURCES)
	sparql-integrate fused.sparql > fused.nt

clean:
	rm -f fused.nt

.PHONY: clean
