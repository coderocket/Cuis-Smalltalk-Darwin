#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.72])
AC_INIT([genie], [1.0], [davidf@afeka.ac.il])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])
AC_CONFIG_SRCDIR([src/breed.h])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIRS([m4])
AC_CONFIG_FILES([Makefile src/Makefile lib/Makefile])

# Checks for programs.
AC_PROG_RANLIB
AC_PROG_CXX([g++-14 g++])
AC_PROG_CC
gl_EARLY

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h sys/time.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_TYPE_SIZE_T

# Checks for library functions.
AC_FUNC_ALLOCA
AC_CHECK_FUNCS([gettimeofday pow random_r])

gl_INIT

AC_OUTPUT
