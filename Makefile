build:
	docker build -t mavmodem .

bash:
	docker run --rm -it mavmodem /bin/bash

mavproxy:
	docker run --rm -it mavmodem /venv/mavproxy/bin/mavproxy.py

minimodem_check: 
	# check that minimodem is making sounds
	docker run --rm -it --device /dev/snd mavmodem minimodem --tx 100

