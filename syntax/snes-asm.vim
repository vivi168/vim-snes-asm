if exists("b:current_syntax")
        finish
endif

syn match snesComment  ";.*$"
syn match snesLabel    "\v\@\w+"

syn case ignore

syn keyword snes65816Reg x y a s
syn keyword snes65816Keyword adc sbc cmp cpx cpy dec dex dey inc inx iny and eor ora bit trb tsb asl lsr rol ror bcc bcs beq bmi bne bpl bra bvc bvs brl jmp jsl jsr rtl rts brk cop rti clc cld cli clv sec sed sei rep sep lda ldx ldy sta stx sty stz mvn mvp nop wdm pea pei per pha phx phy pla plx ply phb phd phk php plb pld plp stp wai tax tay tsx txa txs txy tya tyx tcd tcs tdc tsc xba xce

syn keyword spc700Reg x y ya a s sp psw
syn keyword spc700Keyword adc addw and and1 asl bbc bbs bcc bcs beq bmi bne bpl bvc bvs bra brk call cbne clr1 clrc clrp clrv cmp cmpw daa das dbnz dec decw di div ei eor eor1 inc incw jmp lsr mov mov1 movw mul nop not1 notc or or1 pcall pop push ret ret1 rol ror sbc set1 setc setp sleep stop subw tcall tclr1 tset1 xcn

syn keyword miniAsmKeyword incbin

syn case match

hi def link snesComment             Comment
hi def link snesLabel               Label

hi def link snes65816Keyword        Function
hi def link spc700Keyword           Function
hi def link miniAsmKeyword          Special

let b:current_syntax = "snes-asm"
