#!/bin/sh

# prepare a directory for working with the genie engine

# create a directory to hold the compiled engine

echo mkdir engine

# create a directory to hold the c++ files that the genie compiler generates

echo mkdir generated

# create fifos for communicating with the genie compiler and gnuplot 

echo mkfifo make.fifo
echo mkfifo run.fifo
echo mkfifo score.gnuplot.fifo
echo mkfifo progress.gnuplot.fifo

# configure the engine 

C=$(dirname $0)/genie/configure
J=$PWD

cd engine && $C CXX='g++-14' CXXFLAGS="-O2 -fopenmp -I$J/generated"

