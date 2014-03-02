# - Try to find MySQL / MySQL Embedded library
# Find the MySQL includes and client library
# This module defines
#  MYSQL_INCLUDE_DIR, where to find mysql.h
#  MYSQL_LIBRARIES, the libraries needed to use MySQL.
#  MYSQL_LIB_DIR, path to the MYSQL_LIBRARIES
#  MYSQL_EMBEDDED_LIBRARIES, the libraries needed to use MySQL Embedded.
#  MYSQL_EMBEDDED_LIB_DIR, path to the MYSQL_EMBEDDED_LIBRARIES
#  MYSQL_FOUND, If false, do not try to use MySQL.
#  MYSQL_EMBEDDED_FOUND, If false, do not try to use MySQL Embedded.

# Copyright (c) 2006-2008, Jaros?aw Staniek <staniek@kde.org>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.

include(CheckCXXSourceCompiles)
include(MacroPushRequiredVars)

if(WIN32)
   find_path(MYSQL_INCLUDE_DIR mysql.h
      PATHS
      $ENV{PROGRAMFILES}/MySQL/**/include
   )
else(WIN32)
   find_path(MYSQL_INCLUDE_DIR mysql.h
      PATHS
      $ENV{MYSQL_INCLUDE_DIR}
      $ENV{MYSQL_DIR}/include
      /usr/local/mysql/include
      /opt/mysql/mysql/include
      PATH_SUFFIXES
      mysql
   )
endif(WIN32)

if(WIN32)
#   find_library(MYSQL_LIBRARIES NAMES mysqlclient
   find_library(MYSQL_LIBRARIES NAMES libmysql
      PATHS
      $ENV{MYSQL_DIR}/lib/${binary_dist}
      $ENV{MYSQL_DIR}/libmysql/${build_dist}
      $ENV{MYSQL_DIR}/client/${build_dist}
      $ENV{PROGRAMFILES}/MySQL/**/lib/
      $ENV{SystemDrive}/MySQL/**/lib/${binary_dist}
   )
else(WIN32)
#   find_library(MYSQL_LIBRARIES NAMES mysqlclient
   find_library(MYSQL_LIBRARIES NAMES libmysql
      PATHS
      $ENV{MYSQL_DIR}/libmysql_r/.libs
      $ENV{MYSQL_DIR}/lib
      $ENV{MYSQL_DIR}/lib/mysql
      /usr/local/mysql/lib
      /opt/mysql/mysql/lib
      PATH_SUFFIXES 
      mysql
   )
endif(WIN32)

if(WIN32)
   set(MYSQL_LIB_PATHS
      $ENV{MYSQL_DIR}/lib/opt
      $ENV{MYSQL_DIR}/client/release
      $ENV{PROGRAMFILES}/MySQL/**/lib/opt
      $ENV{SystemDrive}/MySQL/**/lib/opt
   )
   find_library(MYSQL_LIBRARIES NAMES mysqlclient
      PATHS
      ${MYSQL_LIB_PATHS}
   )
else(WIN32)
   set(MYSQL_LIB_PATHS
      $ENV{MYSQL_DIR}/libmysql_r/.libs
      $ENV{MYSQL_DIR}/lib
      $ENV{MYSQL_DIR}/lib/mysql
      /usr/local/mysql/lib
      /opt/mysql/mysql/lib
      PATH_SUFFIXES
      mysql
   )
   find_library(MYSQL_LIBRARIES NAMES mysqlclient
      PATHS
      ${MYSQL_LIB_PATHS}
   )
endif(WIN32)

find_library(MYSQL_EMBEDDED_LIBRARIES NAMES mysqld
   PATHS
   ${MYSQL_LIB_PATHS}
)

if(MYSQL_LIBRARIES)
   get_filename_component(MYSQL_LIB_DIR ${MYSQL_LIBRARIES} PATH)
endif(MYSQL_LIBRARIES)

if(MYSQL_EMBEDDED_LIBRARIES)
   get_filename_component(MYSQL_EMBEDDED_LIB_DIR ${MYSQL_EMBEDDED_LIBRARIES} PATH)
endif(MYSQL_EMBEDDED_LIBRARIES)

macro_push_required_vars()
set( CMAKE_REQUIRED_INCLUDES ${MYSQL_INCLUDE_DIR} )
set( CMAKE_REQUIRED_LIBRARIES ${MYSQL_EMBEDDED_LIBRARIES} )
check_cxx_source_compiles( "#include <mysql.h>\nint main() { int i = MYSQL_OPT_USE_EMBEDDED_CONNECTION; }" HAVE_MYSQL_OPT_EMBEDDED_CONNECTION )
macro_pop_required_vars()

if(MYSQL_INCLUDE_DIR AND MYSQL_LIBRARIES)
   set(MYSQL_FOUND TRUE)
   message(STATUS "Found MySQL: ${MYSQL_INCLUDE_DIR}, ${MYSQL_LIBRARIES}")
else(MYSQL_INCLUDE_DIR AND MYSQL_LIBRARIES)
   set(MYSQL_FOUND FALSE)
   message(STATUS "MySQL not found.")
endif(MYSQL_INCLUDE_DIR AND MYSQL_LIBRARIES)

if(MYSQL_INCLUDE_DIR AND MYSQL_EMBEDDED_LIBRARIES AND HAVE_MYSQL_OPT_EMBEDDED_CONNECTION)
   set(MYSQL_EMBEDDED_FOUND TRUE)
   message(STATUS "Found MySQL Embedded: ${MYSQL_INCLUDE_DIR}, ${MYSQL_EMBEDDED_LIBRARIES}")
else(MYSQL_INCLUDE_DIR AND MYSQL_EMBEDDED_LIBRARIES AND HAVE_MYSQL_OPT_EMBEDDED_CONNECTION)
   set(MYSQL_EMBEDDED_FOUND FALSE)
   message(STATUS "MySQL Embedded not found.")
endif(MYSQL_INCLUDE_DIR AND MYSQL_EMBEDDED_LIBRARIES AND HAVE_MYSQL_OPT_EMBEDDED_CONNECTION)

mark_as_advanced(MYSQL_INCLUDE_DIR MYSQL_LIBRARIES MYSQL_EMBEDDED_LIBRARIES)

