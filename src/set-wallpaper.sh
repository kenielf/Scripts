#!/bin/sh
# TODO: Finish the application

# Rules
# Set the wallpaper if -s is set
# Load the wallpaper if -l is set
# Use the default if -d is set

wallpaper

# Options
while getopts "s:dl" arg; do
    case $arg in
        "s")
            SET=true && wallpaper=$OPTARG
	    ;;
        "d")
            DEFAULT=true
	    ;;
        "l")
            LOAD=true
	    ;;
    esac
done

# 
#
## Verify that the path was set accordingly
#[ -z "$1" ] && exit 1
#
## Create the file with the correct path
#wallpaper_dir="/tmp/wallpaper"
#if [ ! -f $wallpaper_dir ]; then
#    echo "$1" >> $wallpaper_dir
#else
#    rm $wallpaper_dir
#    echo "$1" >> $wallpaper_dir
#fi
#
## Set the wallpaper
#feh --bg-fill "$1"
#
