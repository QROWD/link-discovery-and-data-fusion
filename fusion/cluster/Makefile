SOURCES = \
  ../../datasets/osm/osm.ttl \
  ../../datasets/qrowd/qrowd.nt \
  ../../datasets/trento/trento.nt \
  ../../interlinking/qrowd-osm/qrowd-osm-sameas.nt \
  ../../interlinking/osm-trento/osm-trento-sameas.nt \
  ../../interlinking/trento-qrowd/trento-qrowd-sameas.nt

fusion-sameas-clusters.nt: fusion-input.ttl fusion-sameas-clusters.sparql
	sparql-integrate fusion-sameas-clusters.sparql > fusion-sameas-clusters.nt


fusion-input.ttl: $(SOURCES)
	riot --output=TURTLE $(SOURCES) > fusion-input.ttl

clean:
	rm -f fusion-input.ttl fusion-sameas-clusters.nt

.PHONY: clean
