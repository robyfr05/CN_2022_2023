programma che calcola la somma di due matrici di massimo 10 righe e 10 colonne i cui elementi sono richiesti all'utente
	
	PROGRAM SUM_MAT
	PARAMETER (MDIM=10)
	REAL A(MDIM, MDIM), B(MDIM, MDIM), C(MDIM, MDIM)

M e N sono rispettivamente l'indice di riga e di colonna delle due matrici
	INTEGER M, N, I, J
	WRITE(*,*)'Definisci le dimensioni delle matrici, riga e colonna:'
	READ(*,*) 	M,N

usiamo la forma di lettura implicita del fortran per richiedere all'utente gli elementi delle due matrici
ha la stessa valenza di usare due cicli DO in cui il ciclo più esterno è fatto sull'indice I delle righe
	WRITE(*,*) 'Quali sono gli elementi della prima matrice?'
	READ(*,*) (  (A(I,J), J=1, N),  I=1, M)
	WRITE(*,*) 'Quali sono gli elementi della seconda matrice?'
	READ(*,*) (  (B(I,J),J=1, N),  I=1, M)

usiamo il comando CALL per richiamare la subroutine che somma due matrici inserita nelworkspace del programma principale
la subroutine richiede l'MDIM che abbiamo stabilito nel progamma (in modo da poter trovare gli elementi, delle due matrici, in memoria)
poi richiede il numero effettivo di righe e colonne delle due matrici, le due matrici e la matrice in cui salvare il risultato	
     
      CALL SUB_SUM_MAT(MDIM, M, N, A, B, C)

usiamo la forma di scrittura implicita del fortran per stampare le colonne di C, mentre per le righe usiamo un ciclo DO
	WRITE(*,*)'La matrice risultante e'''
	DO I=1, M
		WRITE(*,*)   (C(I,J),J=1, N)
	ENDDO
	END
