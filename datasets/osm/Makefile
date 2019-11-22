osm.nt: osm.sparql
	sparql-integrate osm.sparql > osm-dup.nt
	sort osm-dup.nt | uniq > osm.nt
	rm -f osm-dup.nt

.PHONY: clean
clean:
	rm -f osm.nt
