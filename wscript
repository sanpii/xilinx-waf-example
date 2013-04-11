#!/usr/bin/env python

def options(opt):
    opt.load("xilinx", tooldir = "xilinx-waf")

def configure(conf):
    conf.load("xilinx", tooldir = "xilinx-waf")

def build(bld):
    bld.recurse('src')
