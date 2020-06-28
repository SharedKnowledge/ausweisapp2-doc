pull:
	git pull
	git submodule update --init --recursive

push:
	git push

clean:
	rm -rf ./public

.PHONY: clean pull