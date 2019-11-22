DEPENDENCIES = \
	       ../../datasets/trento/trento.nt \
	       ../../datasets/qrowd/qrowd.nt \
	       ../config.ttl \
	       trento-qrowd-config.ttl

trento-qrowd-sameas.nt: $(DEPENDENCIES) clean
	riot --output=TURTLE trento-qrowd-config.ttl ../config.ttl > config.ttl
	limes config.ttl

.PHONY: clean
clean:
	rm -rf cache *.nt *.json config.ttl
