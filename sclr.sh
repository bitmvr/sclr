#!/usr/bin/env bash

small='\e[8;15;80t'
medium='\e[8;30;140t'
large='\e[8;45;200t'
xlarge='\e[8;75;325t'

sclr::usage(){
	echo ""
	echo "$(basename "$0") - Simple Command Line Rescaler"
	echo ""
	echo -e "-s | --small\tRescales command line window to small"
	echo -e "-m | --medium\tRescales command line window to medium"
	echo -e "-l | --large\tRescales command line window to large"
	echo -e "-x | --xlarge\tRescales command line window to extra large"
	echo -e "-h | --help\tDisplays this text"
	echo ""
}

if [[ $# -eq 0 ]] ; then
    sclr::usage
    exit 0
fi

case "$1" in
    -s|--small) 
		printf "$small" && clear
	;;
    -m|--medium) 
		printf "$medium" && clear
	;;
    -l|--large)
		printf "$large" && clear
	;;
    -h|--help)
		sclr::usage
	;;
	*) 
		sclr::usage
	;;
esac

