DEPENDENCIES = \
	       ../../datasets/qrowd/qrowd.nt \
	       ../../datasets/osm/osm.nt \
	       ../config.ttl \
	       qrowd-osm-config.ttl

qrowd-osm-sameas.nt: $(DEPENDENCIES) clean
	riot --output=TURTLE qrowd-osm-config.ttl ../config.ttl > config.ttl
	limes config.ttl

.PHONY: clean
clean:
	rm -rf cache *.nt *.json config.ttl
