#!/bin/bash
set -e

modify-schema "
CHANGE isReleasedFromTwillio isReleasedFromTwilio bit(1)
" rdsmartnumber

add-schema-version `basename "$0"`

