#!/bin/bash

make pdf/merged.pdf

while inotifywait -qre close_write,move,create,delete .; do make pdf/merged.pdf; done
