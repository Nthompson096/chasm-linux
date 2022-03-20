#!/bin/sh
# Says on the tin of the file, will remove the chasm folder. be sure to run sudo.
  rm -r ../chasm 2>/dev/null |
	  rm /usr/bin/Chasm 2>/dev/null |
	  rm /usr/bin/Chasm-Addon 2>/dev/null
