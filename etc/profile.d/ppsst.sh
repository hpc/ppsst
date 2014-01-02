#!/bin/bash

[ -f /etc/sysconfig/ppsst ] && . /etc/sysconfig/ppsst

export PATH=$PATH:$PPSST_BIN
