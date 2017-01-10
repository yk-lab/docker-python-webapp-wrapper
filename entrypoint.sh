#! /bin/sh

if [ -r /web ]; then
  cd /web
  if [ -r requirements.txt ]; then
    pip install -r requirements.txt
  else
    echo "Warning: not find requirements.txt!";
  fi
  
  if [ -r $1 ]; then
    python $1
  else
    echo "Error: not find $1!";
    ls
    ls /web
  fi
else
  echo "Error: not find /web!";
fi

