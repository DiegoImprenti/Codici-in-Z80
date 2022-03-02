;Untitled.asma

;algoritmo che inserendo 2 numeri salva il maggiore tra i 2

ld b,10
ld c,4

ld d,b ;copia del registro b
ld e,c ;copia del registro c

su:
dec e ;decremento e
jr z, se ;controllo se e è uguale a 0, in caso lo è salto al punto se
dec d ;decremento d
jr z, sa ;controllo se è uguale a 0, in caso lo è salto al punto sa
jr nz, su 

se: ;il conenuto di b è il numero maggiore
ld a, b
halt

sa: ;il contenuto di c è il numero maggiore
ld a, c
halt

