#!/bin/bash

echo `ls -l| awk -F' ' '{print $9}'`
