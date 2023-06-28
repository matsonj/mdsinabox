
install:
	pip3 install -r requirements.txt
	npm --prefix ./reports install
	alto tap-spreadsheets-anywhere:target-parquet

up:
	python3 -m duckdbt.server
