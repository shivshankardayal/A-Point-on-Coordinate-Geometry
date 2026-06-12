#!/bin/bash

make html

while inotifywait -qre close_write,move,create,delete .; do make html; done
