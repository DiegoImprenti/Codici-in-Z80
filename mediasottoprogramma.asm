;msa.deltitnU

ld b, 3 ;numero 1
ld c, 4 ;numero 2
ld d, 5 ;numero 3
ld a, 0 ;somma dei numeri
ld e, 3 ;numero della media
ld ix, 0x0200 ;indirizzo di memoria dove c'è il risultato
ld (ix), 0 ;inizializzazione perchè se no faceva robe strane

;somma dei numeri
add b 
add c
add d

call media

media:
sub e
jp c, resto
inc (ix)
jp media
halt

resto:
add e
ld h, a