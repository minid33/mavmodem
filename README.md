# MAVmodem

MAVmodem is a docker image that combines [minimodem](http://www.whence.com/minimodem/) and [MAVproxy](http://dronecode.github.io/MAVProxy/) to simplify the creation of a one way telemetry link over an FPV audio channel.

Using the audio channel of an FPV system we can reduce the number of transmitters on the APM powered vehicle. This may also aide pilots who do not possess an amature radio liscense get telemetry over a longer distance than bluetooth and APM telemetry module. An additional use case is that this may make it easier for pilots to choose between the 433MHz APM telemetry module and an LRS system (which majoritively run operate on the 433Mhz band).

## Requirements ##
    - Some soldering skills
    - Docker 1.7+
    - A microcomputer like an Raspberry Pi
There's a [great guide here](http://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/) to help running Docker on  RPi

## Using mavmodem ##
    1. make build
    2. make mavmodem (on the TX computer)
If you intend to use mavmodem on a a raspberry pi you should change the FROM image from `FROM ubuntu:14.04` to `FROM resin/rpi-raspbian`. This will be scripted in later revisions.

## Example Setup ##
![Example Setup](http://i.imgur.com/NQbKhYs.png)