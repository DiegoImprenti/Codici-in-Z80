;esercizio 3.asm
;somma dei primi 2 numeri = 2*(somma secondi)
;se si non fare nulla
;se no scrivere in un registro di quanto eccede o manca al doppio

ld b, 1 ;registro B
ld c, 2 ;registro C
ld d, 3 ;registro D
ld e, 4 ;registro E

ld h, 0 ;contenitore della somma tra B e C
ld l, 0 ;contenitore della somma tra D ed E

;inizzializzazione di H
add a, b 
add a, c
ld h, a

ld a,0

;inizzializzazione di L
add a, d
add a, e
ld l, a

ld a, 0

;inizio del confronto
ld a, l ;carico in A il contenitore L
add a, a ;carico in A, A per avere 2*L
sub a, h ;Sottraggo ad A il contenitore H
jp z, giusto ;controllo se il risultato è 0, nel caso lo sia H = 2*L
ld a, l ;se siamo a questa istruzione H != 2*L quindi ricarico L in A
add a, a ;carico A in A per avere 2*L
cp h ;confronto 2*L (A) con H

jp c, hMagg ;se il flag C è accesso significa che H > 2*L

hMin: ;H < 2*L
sub a, h ;sottraggo H a 2*L
halt ;risultato scritto in A


hMagg: ;H > 2*L
ld a, h ;carico in A il contenitore H
sub a, l ;sottraggo ad H il contenuto di L
sub a, l ;sottraggo ancora il contenuto di L per avere 2*L
halt ;il risultato è salvato in A

giusto:
halt ; H = 2*L quindi in A ci sarà 0 
