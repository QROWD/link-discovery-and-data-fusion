SOURCES = \
  ../datasets/osm/osm.ttl \
  ../datasets/qrowd/qrowd.nt \
  ../datasets/trento/trento.nt

visualization.csv: visualization.ttl visualization.sparql
	sparql --data visualization.ttl --query visualization.sparql --results csv > visualization.csv

visualization.ttl: $(SOURCES)
	riot --output=TURTLE $(SOURCES) > visualization.ttl

clean:
	rm -f visualization.csv visualization.ttl

.PHONY: clean
