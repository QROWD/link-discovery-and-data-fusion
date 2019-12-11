INPUT = ./../../fusion/fused.nt

bikeracks.json: geojson.sparql $(INPUT)
	sparql-integrate --depth=4 --flat --jq $(INPUT) geojson.sparql > bikeracks.geojson

clean:
	rm -f bikeracks.geojson

.PHONY: clean
