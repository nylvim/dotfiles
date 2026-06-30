#!/usr/bin/python3

import sys
from pypinyin import slug, Style

for line in sys.stdin:
    n, line = line.rstrip('\n').split('\t', 1)
    full = slug(line, separator=' ')
    initials = slug(line, style=Style.INITIALS, separator='')
    print(n, line, full, initials, sep='\t')
