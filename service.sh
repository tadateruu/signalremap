#!/system/bin/sh

EVENT_DEV="/dev/input/event5"
KEY_A_HEX="001e"
while true; do
    getevent $EVENT_DEV | while read -r line; do
        if echo "$line" | grep "0001 001e 00000000"; then
            # replace with preferred messaging app MainActivity
				am start -n im.molly.app/org.thoughtcrime.securesms.MainActivity
        fi
    done
done
