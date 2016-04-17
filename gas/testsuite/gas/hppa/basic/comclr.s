	.SPACE $PRIVATE$
	.SUBSPA $DATA$,QUAD=1,ALIGN=8,ACCESS=31
	.SUBSPA $BSS$,QUAD=1,ALIGN=8,ACCESS=31,ZERO,SORT=82
	.SPACE $TEXT$
	.SUBSPA $LIT$,QUAD=0,ALIGN=8,ACCESS=44
	.SUBSPA $CODE$,QUAD=0,ALIGN=8,ACCESS=44,CODE_ONLY

	.SPACE $TEXT$
	.SUBSPA $CODE$

	.align 4
; Basic immediate instruction tests.  
;
; We could/should test some of the corner cases for register and 
; immediate fields.  We should also check the assorted field
; selectors to make sure they're handled correctly.
	comclr %r4,%r5,%r6
	comclr,= %r4,%r5,%r6
	comclr,< %r4,%r5,%r6
	comclr,<= %r4,%r5,%r6
	comclr,<< %r4,%r5,%r6
	comclr,<<= %r4,%r5,%r6
	comclr,sv %r4,%r5,%r6
	comclr,od %r4,%r5,%r6
	comclr,tr %r4,%r5,%r6
	comclr,<> %r4,%r5,%r6
	comclr,>= %r4,%r5,%r6
	comclr,> %r4,%r5,%r6
	comclr,>>= %r4,%r5,%r6
	comclr,>> %r4,%r5,%r6
	comclr,nsv %r4,%r5,%r6
	comclr,ev %r4,%r5,%r6

	comiclr 123,%r5,%r6
	comiclr,= 123,%r5,%r6
	comiclr,< 123,%r5,%r6
	comiclr,<= 123,%r5,%r6
	comiclr,<< 123,%r5,%r6
	comiclr,<<= 123,%r5,%r6
	comiclr,sv 123,%r5,%r6
	comiclr,od 123,%r5,%r6
	comiclr,tr 123,%r5,%r6
	comiclr,<> 123,%r5,%r6
	comiclr,>= 123,%r5,%r6
	comiclr,> 123,%r5,%r6
	comiclr,>>= 123,%r5,%r6
	comiclr,>> 123,%r5,%r6
	comiclr,nsv 123,%r5,%r6
	comiclr,ev 123,%r5,%r6

