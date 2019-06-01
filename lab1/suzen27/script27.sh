#!/bin/bash
ls -a
flag=$(tail -f diary | grep FLAG)
echo $flag
