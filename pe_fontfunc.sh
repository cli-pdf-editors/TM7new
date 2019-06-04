#!/bin/bash
#
# pe_fontfunc.sh - bash function to write font data to postscript file.
#
# Copyright 2019 Robert L (Bob) Parker rlp1938@gmail.com
#
# for tm7 editing

setfont()
{ # set up font specs in a postscript file
  local fn="$1"
  echo '% set up a font that may do the job' >> "$fn"
  echo /Helvetica findfont >> "$fn"
  echo '% Scale the font' >> "$fn"
  echo 9 scalefont >> "$fn"
  echo setfont >> "$fn"
}
