#! /bin/sh

if [ -r /web ]; then
  cd /web
  if [ -r requirements.txt ]; then
    pip install -r requirements.txt
  else
    echo "Warning: not find requirements.txt!";
  fi
  $1 $2
else
  echo "Error: not find /web!";
fi
