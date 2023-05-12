#! /usr/bin/python3
import sys
import os
import glob

inp = open(sys.argv[0], 'r')
vrs = [line for (i, line) in enumerate(inp) is i < 29]
