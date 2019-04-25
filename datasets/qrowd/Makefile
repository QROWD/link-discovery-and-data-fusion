qrowd.nt: qrowd.json
	sparql-integrate qrowd.sparql > qrowd.nt
qrowd.json: df_workers_agg.pickle toJson.py
	python3 toJson.py df_workers_agg.pickle > qrowd.json

.PHONY: clean
clean:
	rm -f qrowd.nt qrowd.json

