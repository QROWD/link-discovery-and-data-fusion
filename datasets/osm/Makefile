osm.nt: osm.sparql
	sparql-integrate osm.sparql > osm.nt
	sort osm.nt | uniq > osm-dedup.nt
	rm -f osm.nt
	mv osm-dedup.nt osm.nt

.PHONY: clean
clean:
	rm -f osm.nt
