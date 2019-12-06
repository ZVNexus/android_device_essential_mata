#!/sbin/sh

# One of the many libraries that this daemon needs depends
# on a special symbol from libc++.so that is in /vendor/lib64
# so we must have this daemon prioritize the libraries in
# /vendor/lib64 to get all the symbols.
LD_LIBRARY_PATH=/vendor/lib64:/sbin; /sbin/hbtp_daemon