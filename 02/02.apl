#!/usr/bin/dyalogscript

matchups←(⊃,{3⊃⍵})¨⊃⎕NGET'input.txt'1
draws←('AX' 'BY' 'CZ')
wins←('AY' 'BZ' 'CX')
gamescore←{⍵∊wins:6⋄3×⍵∊draws}
pickscore←{(2⊃⍵)='X':1⋄2+(2⊃⍵)='Z'}

⎕←matchups
⎕←(gamescore↓)¨matchups
⎕←pickscore¨matchups
⎕←+/((gamescore↓)¨matchups) , (pickscore¨matchups) ⍝ Part 1

gamescore2←{(2⊃⍵)='Z':6⋄{(2⊃⍵)='Y':3⋄0}⍵}
A←{(2⊃⍵)='Z':2⋄{(2⊃⍵)='Y':1⋄3}⍵}
B←{(2⊃⍵)='Z':3⋄{(2⊃⍵)='Y':2⋄1}⍵}
C←{(2⊃⍵)='Z':1⋄{(2⊃⍵)='Y':3⋄2}⍵}
pickscore2←{(1⊃⍵)='A':A⍵⋄{(1⊃⍵)='B':B⍵⋄C⍵}⍵}

⎕←gamescore2¨matchups
⎕←pickscore2¨matchups
⎕←+/(gamescore2¨matchups) , (pickscore2¨matchups) ⍝ Part 2