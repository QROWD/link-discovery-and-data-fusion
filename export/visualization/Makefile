INPUT = ./../../fusion/fused.nt

visualization.csv: visualization.sparql $(INPUT)
	sparql --data $(INPUT) --query visualization.sparql --results csv > visualization.csv

clean:
	rm -f visualization.csv

.PHONY: clean
