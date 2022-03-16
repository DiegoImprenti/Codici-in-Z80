;Untitled.asm
;scrivere un programma che calcola il minore tra 3 numeri

;compare n1 and n2, than the minor one will be compared to n3, the minour number will be saved in A
; n1 will be in A, n2 will be in B and n3 will be in C

;load
ld a, 5 ;metti x in A
ld b, 9 ;metti x in B
ld c, 3 ;metti x in C

;ld d, a ;clona A in D
;ld e, b ;clona B in E
;ld h, c ;clona C in H

;compare n1 and n2
cp b ;confronta a e b cambiando il flag C

jr c, amin ;se C è attivo A è minore di B
ld a, b ;carico B che è minore in A
cp c ;confronto A e C
jr c, camin 
ld a,c
halt

amin: ;A è minore quindi continuo con il confrontare
cp c ;confronto ad A C
jr c, camin ;se C è attivo A è minore di C
ld a, c
halt

camin:
halt

