# yandex-disk-docker
Mostly based on https://github.com/teran/docker-yandex-disk

Since yandex-disk CLI utility has a creepy feature to spontaneously upload your files and images outside of its data folder, i've decided to put it into a restricted container.

How to run
===========
Use the provided `yandex-disk-docker.sh` script to start a dokerized yandex-disk and link it to its config and data dirs on a host machine.
