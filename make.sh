#!/usr/bin/env bash
for round in prelim1 prelim2 prelim3 final; do
    jsonnet make.jsonnet --tla-str round=${round} > ${round}.js
done
