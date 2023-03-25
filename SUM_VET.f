programma che chiede all'utente 10 elementi, massimo, di due vettori e che li somma invocando una subroutine
	PROGRAM SUM_VET
definiamo un nmax di elementi che possono essere inseriti nei vettori

	PARAMETER (NMAX=10)

definiamo i due vettori da sommare e quello in cui salvare il risultato

	REAL X(NMAX), Y(NMAX), S(NMAX)

definiamo una variabile n in cui salvare il numero di elementi richiesto all'utente

	INTEGER N

	WRITE(*,*)'Quanti elementi devono contenere i due vettori?'
	READ(*,*) N

usiamo il DO ilmplicito del fortran per richiedere le componenti dei due vettori

	WRITE(*,*)'Quali sono gli elementi del primo vettore?'
	READ(*,*) (X(I), I=1, N)

	WRITE(*,*)'Quali sono gli elementi del secondo vettore?'
	READ(*,*) (Y(I), I=1, N)

usiamo il comando CALL per richiamare la subroutine che somma i due vettori, essa si aspetta:
il numero delle componenti, i due vettori da sommare ed il vettore in cui salvare il risultato

	CALL SUB_SUM_VET(N, X, Y, S)

usiamo il DO implicito per stampare a video le componenti del vettore risultato
	
      WRITE(*,*) 'Il vettore risultante dalla somma dei vettori indicati 
     + e'''
	WRITE(*,*) (S(I), I=1, N)
	
	END 