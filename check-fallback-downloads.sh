#!/usr/bin/env bash

FALLBACK_URL="https://bitcoincore.org/depends-sources/"
WGET_LOG="/tmp/wget.log"

FILES=(
  db-4.8.30.NC.tar.gz
  capnproto-c++-0.7.0.tar.gz
  boost_1_77_0.tar.bz2
  expat-2.4.8.tar.xz
  fontconfig-2.12.6.tar.bz2
  freetype-2.11.0.tar.xz
  libevent-2.1.12-stable.tar.gz
  d576d975debdc9090bd2582f83f49c76c0061698.tar.gz # libmultiprocess
  4536032ae32268a45c073a4d5e91bbab4534773a.tar.gz # libnatpmp
  libXau-1.0.9.tar.bz2
  libxcb-1.14.tar.xz
  xcb-util-0.4.0.tar.bz2
  xcb-util-image-0.4.0.tar.bz2
  xcb-util-keysyms-0.4.0.tar.bz2
  xcb-util-renderutil-0.3.9.tar.bz2
  xcb-util-wm-0.4.1.tar.bz2
  libxkbcommon-0.8.4.tar.xz
  miniupnpc-2.2.2.tar.gz
  2ef2e931cf641547eb8a68cfebde61003587c9fd.tar.gz # cctools
  clang+llvm-10.0.1-aarch64-linux-gnu.tar.xz
  clang+llvm-10.0.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz
  v1.3.0.tar.gz # ds_store
  664b8414f89612f2dfd35a9b679c345aa5389026.tar.gz # libtapi
  v2.2.0.tar.gz # mac_alias
  qrencode-3.4.4.tar.bz2
  qtbase-everywhere-opensource-src-5.15.3.tar.xz
  qttranslations-everywhere-opensource-src-5.15.3.tar.xz
  qttools-everywhere-opensource-src-5.15.3.tar.xz
  sqlite-autoconf-3380500.tar.gz
  systemtap-4.7.tar.gz
  xproto-7.0.31.tar.bz2
  zeromq-4.3.4.tar.gz
)

total=${#FILES[@]}
n=0

for f in "${FILES[@]}"; do
  ((n=n+1))
  wget "$FALLBACK_URL$f" &> "$WGET_LOG" || cat "$WGET_LOG"
  exit_code=$?
  if [[ exit_code -eq 0 ]]; then
    status="OK"
  else
    status="Error $exit_code"
  fi
  echo "$n of $total: $f ... $status"
done

rm -rf "$WGET_LOG"
