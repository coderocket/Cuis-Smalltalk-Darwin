#!/bin/sh

# prepare a directory for working with the genie engine

# create a directory to hold the compiled engine

mkdir engine

# create a directory to hold the c++ files that the genie compiler generates

mkdir generated

# configure the engine 

C=$(dirname $0)/genie/configure
J=$PWD

(cd engine && $C CXXFLAGS="-O2 -fopenmp -I$J/generated")

# create fifos for communicating with the genie compiler and gnuplot 

mkfifo engine/make.fifo
mkfifo run.fifo
mkfifo score.gnuplot.fifo
mkfifo progress.gnuplot.fifo

