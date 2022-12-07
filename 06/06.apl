#!/usr/bin/dyalogscript

input←⊃⊃⎕NGET'input.txt'1
⎕←3+⊃⍸{4=≢∪⍵}¨(-1)↓1↓({⊂⍵}⌺4) input ⍝ Part 1
⎕←13+⊃⍸{14=≢∪⍵}¨(-6)↓6↓({⊂⍵}⌺14) input ⍝ Part 2