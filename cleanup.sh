#!/usr/bin/env bash
#
# pe_cleanup.sh - script to provide the basis for a cleanup script.
#
# Copyright 2019 Robert L (Bob) Parker rlp1938@gmail.com
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.# See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA 02110-1301, USA.
#
if [[ -f config.lst ]];then rm config.lst; fi
if [[ -f doc_data.txt ]];then rm doc_data.txt; fi
if [[ -f tm7_001.pdf ]];then rm tm7_001.pdf; fi
if [[ -f tm7_002.pdf ]];then rm tm7_002.pdf; fi
