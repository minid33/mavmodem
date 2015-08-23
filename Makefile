build:
	docker build -t mavmodem .

bash:
	docker run -v /dev/snd/:/dev/snd --privileged --rm -it mavmodem /bin/bash

mavproxy:
	docker run --rm -it mavmodem /venv/mavproxy/bin/mavproxy.py

minimodem_check:
	# check that minimodem is making sounds
	docker run -v /dev/snd:/dev/snd --privileged --rm -it --device /dev/snd mavmodem sh -c "echo im a modem | minimodem -A --tx 100"

mavmodem:
	docker run --privileged -v /dev/ttyACM0:/dev/ttyACM0 -v /dev/snd/:/dev/snd --rm -it mavmodem sh -c "/venv/mavproxy/bin/mavproxy.py --master=/dev/ttyACM0 --baudrate=1000 mavproxy.py --cmd='watch *'| minimodem -A -t 1000"