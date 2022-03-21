#!/bin/bash

set -euo pipefail
source $(dirname $0)/var.sh

FLAGS=(
  "${FFMPEG_CONFIG_FLAGS_BASE[@]}"
  --disable-gpl            # required by x264
  --disable-nonfree        # required by fdk-aac
  --disable-zlib           # enable zlib
  --disable-libx264        # enable x264
  --disable-libx265        # enable x265
  --disable-libvpx         # enable libvpx / webm
  --disable-libwavpack     # enable libwavpack
  --disable-libmp3lame     # enable libmp3lame
  --disable-libfdk-aac     # enable libfdk-aac
  --disable-libtheora      # enable libtheora
  --disable-libvorbis      # enable libvorbis
  --disable-libfreetype    # enable freetype
  --disable-libopus        # enable opus
  --disable-libwebp        # enable libwebp
  --disable-libass         # enable libass
  --disable-libfribidi     # enable libfribidi
  # --enable-libaom         # enable libaom
)
echo "FFMPEG_CONFIG_FLAGS=${FLAGS[@]}"
emconfigure ./configure "${FLAGS[@]}"
