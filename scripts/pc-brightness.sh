#!/usr/bin/env bash

step=5

case "$1" in
    up)
        ddcutil -d 1 setvcp 10 + $step
        ddcutil -d 2 setvcp 10 + $step
        ;;
    down)
        ddcutil -d 1 setvcp 10 - $step
        ddcutil -d 2 setvcp 10 - $step
        ;;
    list)
        ddcutil -d 1 getvcp 10 2>/dev/null | awk -F'current value = |, max value' '{print $2}'
        ddcutil -d 2 getvcp 10 2>/dev/null | awk -F'current value = |, max value' '{print $2}'
esac

