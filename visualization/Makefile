visualization.csv: visualization.sparql
	rsparql --service http://localhost:8890/sparql --query visualization.sparql --results=CSV > visualization.csv 

.PHONY: clean
clean:
	rm -f visualization.csv
