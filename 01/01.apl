#!/usr/bin/dyalogscript

input←⊃⎕NGET'example.txt'1
groups←(⍎¨)¨((×≢¨)⊆⊢)input
sums←+/¨groups
⎕←⌈/sums ⍝ Part 1
⎕←+/{⍵⌷sums}¨3↑⍒sums ⍝ Part 2
