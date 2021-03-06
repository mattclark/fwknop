#!/bin/sh
#
# get_libfko_header.sh
#
# Copy the fko.h header file in the fwknop source tree into this
# directory.
#
# Usage: ./get_libfko_header.sh [libfko-dir]
#
#   Note: You should run this script only from this directory (jni/fwknop).
#
#   If the libfko-dir argument is not given, this script will assume
#   ../../../../lib (which will work if this directory is still part
#   of the original fwknop source distribution.
#
###############################################################################
#
LIBFKO_DIR=${1:-"../../../../lib"}  # Default relative path to libfko files.

# Simple sanity checks.  See if the LIBFKO_DIR directory exists and see if
# thi "fko_context.h" is found there as well.
#
if [ ! -d "$LIBFKO_DIR" ] ; then
    echo "Libfko directory: '$LIBFKO_DIR' was not found! Aborting."
    exit 1
fi

if [ ! -e "${LIBFKO_DIR}/fko_context.h" ] ; then
    echo "'$LIBFKO_DIR' does not seem to contain the required files! Aborting."
    exit 1
fi

# Copy the fko.h header file
#
/bin/cp ${LIBFKO_DIR}/fko.h .

###EOF###
