SOURCES = \
  ../datasets/osm/osm.nt \
  ../datasets/qrowd/qrowd.nt \
  ../datasets/trento/trento.nt \
  ../interlinking/qrowd-osm/sameas.nt \
  ../interlinking/osm-trento/sameas.nt \
  ../interlinking/trento-qrowd/sameas.nt

fused.nt: fusion-input.nt fusion.sparql
	sparql-integrate fusion-input.nt fusion.sparql > fused.nt

fusion-input.nt: $(SOURCES)
	cat $(SOURCES) > fusion-input.nt

clean:
	rm -f fusion-input.nt fused.nt

.PHONY: clean
