docker run -d \
  -v ~/.config/yandex-disk:/root/.config/yandex-disk:rw \
  -v ~/Yandex.Disk:/data \
  hexaedron/yandex-disk-docker start -D --dir=/data
