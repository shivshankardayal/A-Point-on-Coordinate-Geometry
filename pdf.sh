#!/bin/bash

make pdf/cg.pdf

while inotifywait -qre close_write,move,create,delete .; do make pdf/cg.pdf; done
