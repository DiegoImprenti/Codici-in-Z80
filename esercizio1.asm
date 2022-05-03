;esercizio 1.asm
;il programma inizia salvando 3 nella cella 0x200 
;i multipli nelle successive fino alla 0x207

ld ix, 0x200 ;indirizzo di salvataggio
ld a, 3 ;variabile di conteggio dei multipli
ld e, 7 ;variabile ciclo

ciclo:
ld (ix), a ;carico nel punto allocato da IX il contenuto di A
add a, 3 ;aggiungo ad A 3
inc ix ;incremento IX
dec e ;decremento la variablile del ciclo
jp p, ciclo ;jump se è positivo

ld e, 7 ;variabile del ciclo
ld a, 0 ;salvataggio della somma
ld ix, 0x200 ;indirizzo di memoria

somma:
add a, (ix) ;aggiungo ad A il contenuto del punto indicato da IX
inc ix ;incremento IX
dec e ;decremento la varibile di conteggio
jp p, somma ;jump se è positivo

halt

