DEPENDENCIES = \
	       ../../datasets/qrowd/qrowd.nt \
	       ../../datasets/osm/osm.ttl \
	       ../config.ttl \
	       qrowd-osm-config.ttl

qrowd-osm-sameas.nt: $(DEPENDENCIES)
	riot --output=TURTLE qrowd-osm-config.ttl ../config.ttl > config.ttl
	limes config.ttl

.PHONY: clean
clean:
	rm -rf cache *.nt *.json config.ttl
