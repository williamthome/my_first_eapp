#!/bin/bash

set -e

cd src/
erl -make
erl -eval "make:all([load]), application:start(my_first_eapp)."

exit 0