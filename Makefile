.PHONY:*

install:
	python3.10 -m venv ve
	ve/bin/pip install -U pip
	ve/bin/pip install -r requirements.txt

clean:
	rm -r ve
