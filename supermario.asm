


; *** HEADER ***

.db "NES", $1a
.db 2 ; = number of PRG banks * $4000
.db 1 ; = number of CHR banks * $2000
.db 1	; NROM
.db 0
.db 0
.db 0
.db 0
.db 0,0,0,0,0

; *** PRG ROM ***

.base $8000

.include supermario0.asm



; *** CHR ROM ***

.incbin supermario.chr


