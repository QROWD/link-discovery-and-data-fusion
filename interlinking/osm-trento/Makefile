DEPENDENCIES = \
	       ../../datasets/osm/osm.nt \
	       ../../datasets/trento/trento.nt \
	       ../config.ttl \
	       osm-trento-config.ttl

osm-trento-sameas.nt: $(DEPENDENCIES) clean
	riot --output=TURTLE osm-trento-config.ttl ../config.ttl > config.ttl
	limes config.ttl

.PHONY: clean
clean:
	rm -rf cache *.nt *.json config.ttl
