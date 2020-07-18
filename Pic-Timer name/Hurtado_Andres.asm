	LIST	P=16F84

TRISB		EQU	06H
TRISA		EQU	05H
PA			EQU	05H
PB			EQU	06H
STATUS	EQU	03H
VAR1		EQU	10H
TMR0    EQU 01H	
INTCON  EQU 0BH	
TMR05ms	EQU	.225
TMR02s	EQU	.126

	ORG	0
	BSF	STATUS,5
	CLRF	TRISA
	CLRF	TRISB
	BCF	STATUS,5
	CLRF	PA
	
INICIO	CALL Muestra_A		;Llama a la funcion de la letra
	CALL Muestra_N					;Llama a la funcion de la letra
	CALL Muestra_D					;Llama a la funcion de la letra
	CALL Muestra_R					;Llama a la funcion de la letra
	CALL Muestra_E					;Llama a la funcion de la letra
	CALL Muestra_S					;Llama a la funcion de la letra
	CALL Muestra_G					;Llama a la funcion de la letra
	GOTO	INICIO

Muestra_A	
  MOVLW   TMR05ms	    		;Carga el Timer0 con el valor que queremos
  MOVWF   TMR0
  BCF     INTCON,2		    ;Reseteamos el Flag de desbordamiento del TMR0
Timer0_A		
	CALL PrintA							;Imprime la letra mientras espera el desbordamiento 
  BTFSS   INTCON,2		    ;¿Se ha desbordado el TMR0?
  GOTO    Timer0_A   			;Aún no, Repite.
  RETURN
Muestra_N	
  MOVLW   TMR05ms	    		;Carga el Timer0 con el valor que queremos
  MOVWF   TMR0
  BCF     INTCON,2		    ;Reseteamos el Flag de desbordamiento del TMR0
Timer0_N		
	CALL PrintN							;Imprime la letra mientras espera el desbordamiento 
  BTFSS   INTCON,2		    ;¿Se ha desbordado el TMR0?
  GOTO    Timer0_N   			;Aún no, Repite.
  RETURN
Muestra_D	
  MOVLW   TMR05ms	    		;Carga el Timer0 con el valor que queremos
  MOVWF   TMR0
  BCF     INTCON,2		    ;Reseteamos el Flag de desbordamiento del TMR0
Timer0_D		
	CALL PrintD							;Imprime la letra mientras espera el desbordamiento 
  BTFSS   INTCON,2		    ;¿Se ha desbordado el TMR0?
  GOTO    Timer0_D   			;Aún no, Repite.
  RETURN
Muestra_R	
  MOVLW   TMR05ms	    		;Carga el Timer0 con el valor que queremos
  MOVWF   TMR0
  BCF     INTCON,2		    ;Reseteamos el Flag de desbordamiento del TMR0
Timer0_R		
	CALL PrintR							;Imprime la letra mientras espera el desbordamiento 
  BTFSS   INTCON,2		    ;¿Se ha desbordado el TMR0?
  GOTO    Timer0_R   			;Aún no, Repite.
  RETURN
Muestra_E	
  MOVLW   TMR05ms	    		;Carga el Timer0 con el valor que queremos
  MOVWF   TMR0
  BCF     INTCON,2		    ;Reseteamos el Flag de desbordamiento del TMR0
Timer0_E		
	CALL PrintE							;Imprime la letra mientras espera el desbordamiento 
  BTFSS   INTCON,2		    ;¿Se ha desbordado el TMR0?
  GOTO    Timer0_E   			;Aún no, Repite.
  RETURN
Muestra_S	
  MOVLW   TMR05ms	    		;Carga el Timer0 con el valor que queremos
  MOVWF   TMR0
  BCF     INTCON,2		    ;Reseteamos el Flag de desbordamiento del TMR0
Timer0_S		
	CALL PrintS							;Imprime la letra mientras espera el desbordamiento 
  BTFSS   INTCON,2		    ;¿Se ha desbordado el TMR0?
  GOTO    Timer0_S   			;Aún no, Repite.
  RETURN
Muestra_G	
  MOVLW   TMR02s	    		;Carga el Timer0 con el valor que queremos
  MOVWF   TMR0
  BCF     INTCON,2		    ;Reseteamos el Flag de desbordamiento del TMR0
Timer0_G		
	CALL PrintG							;Imprime la letra mientras espera el desbordamiento 
  BTFSS   INTCON,2		    ;¿Se ha desbordado el TMR0?
  GOTO    Timer0_G   			;Aún no, Repite.
  RETURN


PrintA MOVLW	B'10000011'
	MOVWF	PB
	BSF	PA,0
	CALL CLINE
	BCF	PA,0
	MOVLW	B'11110101'
	MOVWF	PB
	BSF	PA,1
	CALL CLINE
	BCF	PA,1
	MOVLW	B'11110110'
	MOVWF	PB
	BSF	PA,2
	CALL CLINE
	BCF	PA,2
	MOVLW	B'11110101'
	MOVWF	PB
	BSF	PA,3
	CALL CLINE
	BCF	PA,3
	MOVLW	B'10000011'
	MOVWF	PB
	BSF	PA,4
	CALL CLINE
	BCF	PA,4
	RETURN

PrintN MOVLW	B'10000000'
	MOVWF	PB
	BSF	PA,0
	CALL CLINE
	BCF	PA,0
	MOVLW	B'11111101'
	MOVWF	PB
	BSF	PA,1
	CALL CLINE
	BCF	PA,1
	MOVLW	B'11100011'
	MOVWF	PB
	BSF	PA,2
	CALL CLINE
	BCF	PA,2
	MOVLW	B'11011111'
	MOVWF	PB
	BSF	PA,3
	CALL CLINE
	BCF	PA,3
	MOVLW	B'10000000'
	MOVWF	PB
	BSF	PA,4
	CALL CLINE
	BCF	PA,4
	RETURN

PrintD MOVLW	B'10000000'
	MOVWF	PB
	BSF	PA,0
	CALL CLINE
	BCF	PA,0
	MOVLW	B'10111110'
	MOVWF	PB
	BSF	PA,1
	CALL CLINE
	BCF	PA,1
	MOVLW	B'10111110'
	MOVWF	PB
	BSF	PA,2
	CALL CLINE
	BCF	PA,2
	MOVLW	B'11011101'
	MOVWF	PB
	BSF	PA,3
	CALL CLINE
	BCF	PA,3
	MOVLW	B'11100011'
	MOVWF	PB
	BSF	PA,4
	CALL CLINE
	BCF	PA,4
	RETURN

PrintR MOVLW	B'10000000'
	MOVWF	PB
	BSF	PA,0
	CALL CLINE
	BCF	PA,0
	MOVLW	B'11110110'
	MOVWF	PB
	BSF	PA,1
	CALL CLINE
	BCF	PA,1
	MOVLW	B'11100110'
	MOVWF	PB
	BSF	PA,2
	CALL CLINE
	BCF	PA,2
	MOVLW	B'11010110'
	MOVWF	PB
	BSF	PA,3
	CALL CLINE
	BCF	PA,3
	MOVLW	B'10111001'
	MOVWF	PB
	BSF	PA,4
	CALL CLINE
	BCF	PA,4
	RETURN

PrintE MOVLW	B'10000000'
	MOVWF	PB
	BSF	PA,0
	CALL CLINE
	BCF	PA,0
	MOVLW	B'10110110'
	MOVWF	PB
	BSF	PA,1
	CALL CLINE
	BCF	PA,1
	MOVLW	B'10110110'
	MOVWF	PB
	BSF	PA,2
	CALL CLINE
	BCF	PA,2
	MOVLW	B'10110110'
	MOVWF	PB
	BSF	PA,3
	CALL CLINE
	BCF	PA,3
	MOVLW	B'10111110'
	MOVWF	PB
	BSF	PA,4
	CALL CLINE
	BCF	PA,4
	RETURN

PrintS MOVLW	B'11011101'
	MOVWF	PB
	BSF	PA,0
	CALL CLINE
	BCF	PA,0
	MOVLW	B'10111010'
	MOVWF	PB
	BSF	PA,1
	CALL CLINE
	BCF	PA,1
	MOVLW	B'10110110'
	MOVWF	PB
	BSF	PA,2
	CALL CLINE
	BCF	PA,2
	MOVLW	B'10101110'
	MOVWF	PB
	BSF	PA,3
	CALL CLINE
	BCF	PA,3
	MOVLW	B'11011101'
	MOVWF	PB
	BSF	PA,4
	CALL CLINE
	BCF	PA,4
	RETURN

PrintG MOVLW	B'11110111'
	MOVWF	PB
	BSF	PA,0
	CALL CLINE
	BCF	PA,0
	MOVLW	B'11110111'
	MOVWF	PB
	BSF	PA,1
	CALL CLINE
	BCF	PA,1
	MOVLW	B'11110111'
	MOVWF	PB
	BSF	PA,2
	CALL CLINE
	BCF	PA,2
	MOVLW	B'11110111'
	MOVWF	PB
	BSF	PA,3
	CALL CLINE
	BCF	PA,3
	MOVLW	B'11110111'
	MOVWF	PB
	BSF	PA,4
	CALL CLINE
	BCF	PA,4
	RETURN

CLINE	MOVLW	H'FF'
	MOVWF	VAR1
OTRA	DECFSZ	VAR1,1
	GOTO	OTRA
	RETURN
	END
	
