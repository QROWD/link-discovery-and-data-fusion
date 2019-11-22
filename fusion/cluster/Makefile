SOURCES = \
  ../../datasets/osm/osm.nt \
  ../../datasets/qrowd/qrowd.nt \
  ../../datasets/trento/trento.nt \
  ../../interlinking/qrowd-osm/sameas.nt \
  ../../interlinking/osm-trento/sameas.nt \
  ../../interlinking/trento-qrowd/sameas.nt

fusion-sameas-clusters.nt: fusion-input.nt fusion-sameas-clusters.sparql
	sparql-integrate fusion-sameas-clusters.sparql > fusion-sameas-clusters.nt

fusion-input.nt: $(SOURCES)
	cat $(SOURCES) > fusion-input.nt

clean:
	rm -f fusion-input.nt fusion-sameas-clusters.nt

.PHONY: clean
