#!/bin/bash

make pdf/cg-cc.pdf

while inotifywait -qre close_write,move,create,delete .; do make pdf/cg-cc.pdf; done
