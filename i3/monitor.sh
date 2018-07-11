#!/bin/bash
EXTERNAL_OUTPUT="HDMI1"
INTERNAL_OUTPUT="eDP1"
RES=1920x1080

if xrandr | grep -q "$EXTERNAL_OUTPUT d"; then
    xrandr --output "$EXTERNAL_OUTPUT" --off --output "$INTERNAL_OUTPUT" --auto
else
    xrandr --output "$INTERNAL_OUTPUT" --off --output "$EXTERNAL_OUTPUT" --auto --mode $RES
fi
