define Device/newland_nl-wr8103
  DEVICE_VENDOR := Newland
  DEVICE_MODEL := NL-WR8103
  DEVICE_DTS := mt7981b-newland-nl-wr8103
  DEVICE_DTS_DIR := ../dts
  SUPPORTED_DEVICES := newland,nl-wr8103
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 116736k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += newland_nl-wr8103
