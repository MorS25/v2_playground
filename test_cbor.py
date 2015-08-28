#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# This test uses CBOR (RFC-7049) from
# https://bitbucket.org/bodhisnarkva/cbor
#
# Available in pypi

from __future__ import print_function

import sys
import json
import cbor

def main():
    if len(sys.argv) < 2:
        sys.exit(1)

    with open(sys.argv[1], 'r') as fd:
        obj = json.load(fd)
        msg = cbor.dumps(obj)
        print("Message len:", len(msg), file=sys.stderr)
        print(msg)


if __name__ == "__main__":
    main()
