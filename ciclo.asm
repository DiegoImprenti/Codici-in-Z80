;vogliomorire.asma
;dato il numero 3 inserire in 10 locazioni di memoria vicine il numero X+5
;locazione da dove iniziare 0x200 (C8)

ld a, 3 ;carica 3 in A
ld b, 10 ;carica 10 in B per il conteggio del ciclo
ld ix, 200 ;carica 200 in IX

ciclo:
add a, 5 ;aggiungo 5 ad A 
ld (ix), a ;salvo A in IX
inc ix ;incremento IX
djnz ciclo ;ciclo che contemporaneamente decrementa B e controlla se sia = 0

halt ;esplodi 

