#!/bin/bash

ARGS=""

if [[ -n "$INPUT_OUTPUT_DIR" && "$INPUT_OUTPUT_DIR" != "" ]]; then
  echo "Using output dir: $INPUT_OUTPUT_DIR"
  ARGS="$ARGS -d $INPUT_OUTPUT_DIR"
fi

if [[ -n "$INPUT_INPUT_DIR" && "$INPUT_INPUT_DIR" != "" ]]; then
  echo "Using input dir: $INPUT_INPUT_DIR"
  ARGS="$ARGS $INPUT_INPUT_DIR"
fi

mdbook build $ARGS 

