#!/bin/bash

ARGS=""

if [ -n "$INPUT_OUTPUT_DIR" ]; then
  ARGS="$ARGS -d $INPUT_OUTPUT_DIR"
fi

if [ -n "$INPUT_INPUT_DIR" ]; then
  ARGS="$ARGS $INPUT_INPUT_DIR"
fi

mdbook build $ARGS 

