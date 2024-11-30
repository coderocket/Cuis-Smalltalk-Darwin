#!/bin/sh

H=$(dirname $0)

# prepare a directory for working with the genie engine

# create a directory to hold the compiled engine

mkdir engine

# create a directory to hold the c++ files that the genie compiler generates

mkdir generated

cp $H/user_defined_template.h generated/user_defined_rules.h
cp $H/user_defined_template.cc generated/user_defined_rules.cc

# configure the engine 

C=$H/genie/configure
J=$PWD

(cd engine && $C CXXFLAGS="-O2 -fopenmp -I$J/generated")

# create fifos for communicating with the genie compiler and gnuplot 

mkfifo engine/make.fifo
mkfifo run.fifo
mkfifo score.gnuplot.fifo
mkfifo progress.gnuplot.fifo

