#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import os
import subprocess


def launch_wc(command):
    startupinfo = subprocess.STARTUPINFO()
    startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW
    return subprocess.Popen(command, startupinfo=startupinfo).wait()


cwd = os.path.dirname(os.path.abspath(sys.argv[0]))
proc = os.path.join(cwd, "xslt.x32", "xsltproc.exe")
t_file = os.path.join(cwd, "xsl", "rab_fns.xsl")
x_file = os.path.abspath(sys.argv[1])
c_file = x_file + ".txt"

launch_wc(proc + " -o " + c_file + " " + t_file + " " + x_file)
