#!/vendor/bin/sh
export PATH=$PATH:/sbin

if [ "$1" == "grip" ]; then
    if [ "$2" == "off" ]; then
        hbtp_daemon tool sendCommand enableGripRejection 0
    else
        hbtp_daemon tool sendCommand enableGripRejection 1
    fi
elif [ "$1" == "smoothness" ]; then
    hbtp_daemon tool sendCommand setSmoothing $2
fi
