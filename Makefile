
install:
	pip3 install -r requirements.txt
	npm --prefix ./reports install

up:
	python3 -m duckdbt.server
