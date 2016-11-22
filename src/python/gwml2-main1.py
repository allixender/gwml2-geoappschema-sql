from lxml import etree
import sys
import os


g1 = open('./../xsd/gwml2-main.xds', 'r')

s1 = g1.read()

for line in s1:
    print(line)