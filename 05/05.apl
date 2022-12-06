#!/usr/bin/dyalogscript

input←⊃⎕NGET'input.txt'1
craneText←1⊃((×≢¨)⊆⊢)input
instText←2⊃((×≢¨)⊆⊢)input
inst←{(⍎2⊃⍵),(⍎4⊃⍵),(⍎6⊃⍵)}¨' '(≠⊆⊢)¨instText
⎕←inst
craneWidth←((≢⊃craneText)+1)÷4
craneContent←((≢craneText)-1)↑craneText
crane←{(∊((' '≠⊢)¨)⊆⊢)⍵{((4×⍺)-2)⊃(⊃craneContent[⍵])}¨⍳(≢craneContent)}¨⍳craneWidth
⎕←crane
move←{((⊂((⌽(⌊/((1⊃⍺),≢((2⊃⍺)⊃⍵)))↑((2⊃⍺)⊃⍵)),((3⊃⍺)⊃⍵)))@(3⊃⍺)) ((⊂(1⊃⍺)↓((2⊃⍺)⊃⍵))@(2⊃⍺)) ⍵}
final←2⊃{(⊂{1↓⍵}⊃⍵),⊂((⊃⊃⍵)move(2⊃⍵))}⍣(≢inst)⊢((⊂inst),(⊂crane))
⎕←∊⊃¨final ⍝ Part 1

move2←{((⊂(((⌊/((1⊃⍺),≢((2⊃⍺)⊃⍵)))↑((2⊃⍺)⊃⍵)),((3⊃⍺)⊃⍵)))@(3⊃⍺)) ((⊂(1⊃⍺)↓((2⊃⍺)⊃⍵))@(2⊃⍺)) ⍵}
final2←2⊃{(⊂{1↓⍵}⊃⍵),⊂((⊃⊃⍵)move2(2⊃⍵))}⍣(≢inst)⊢((⊂inst),(⊂crane))
⎕←∊⊃¨final2 ⍝ Part 2