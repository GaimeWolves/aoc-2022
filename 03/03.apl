#!/usr/bin/dyalogscript

rucksacks←⊃⎕NGET'input.txt'1
prio←{'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'⍳⍵}
split←{(↓((≢⍵)÷2)↑⍵),(↓((≢⍵)÷2)↓⍵)}

pairs←split¨rucksacks
⎕←pairs
items←{(2⊃⍵){⍵⊃⍺}⊃(2⊃⍵)(⍸∊)(1⊃⍵)}¨pairs
⎕←prio ¨items
⎕←+/prio ¨items ⍝ Part 1

paritions←(↑,/{⍵,⍵,⍵}¨⍳((≢rucksacks)÷3))⊆rucksacks
badges←{(⊃(3⊃⍵){⍺(⍸∊)⍵}(2⊃⍵)[({(2⊃⍵)(⍸∊)(1⊃⍵)}⍵)])⊃(3⊃⍵)}¨paritions ⍝ i'm scared
⎕←+/prio ¨badges ⍝ Part 2
