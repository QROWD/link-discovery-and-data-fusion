datasets := $(wildcard ../datasets/*/*.ttl ../datasets/*/*.nt ../interlinking/*/*.nt)

reload-data: clean datasets

datasets: $(datasets)
$(datasets):
	cp $@ ./data/virtuoso/toLoad/

clean:
	docker-compose rm -f
	rm -rf ./data/
	mkdir -p ./data/virtuoso/toLoad/

.PHONY: clean datasets $(datasets) reload-data
