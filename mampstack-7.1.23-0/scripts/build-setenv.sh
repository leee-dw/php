#!/bin/sh
LDFLAGS="-L/Users/dongwoolee/Documents/Dev/php/mampstack-7.1.23-0/common/lib $LDFLAGS"
export LDFLAGS
CFLAGS="-I/Users/dongwoolee/Documents/Dev/php/mampstack-7.1.23-0/common/include/ImageMagick -I/Users/dongwoolee/Documents/Dev/php/mampstack-7.1.23-0/common/include $CFLAGS"
export CFLAGS
CXXFLAGS="-I/Users/dongwoolee/Documents/Dev/php/mampstack-7.1.23-0/common/include $CXXFLAGS"
export CXXFLAGS
		    
PKG_CONFIG_PATH="/Users/dongwoolee/Documents/Dev/php/mampstack-7.1.23-0/common/lib/pkgconfig"
export PKG_CONFIG_PATH
