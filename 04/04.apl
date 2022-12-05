#!/usr/bin/dyalogscript

input←⊃⎕NGET'input.txt'1
pairs←'-'(≠⊆⊢)¨¨','(≠⊆⊢)¨input
sects←{(1⊃⍵){(⍳⍎⍵)~(⍳((⍎⍺)-1))}(2⊃⍵)}¨¨pairs
⎕←+/{(1⊃⍵){((⍵∩⍺)≡⍵)∨((⍵∩⍺)≡⍺)}(2⊃⍵)}¨sects ⍝ Part 1
⎕←+/{(1⊃⍵){×≢(⍺∩⍵)}(2⊃⍵)}¨sects ⍝ Part 2