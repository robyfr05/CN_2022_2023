subroutine che calcola la somma di due matrici
gli argomenti che si aspetta la matrice sono: l'MDIM, le dimensioni delle due matrici, le due matrici, e una matrice in cui salvare il risultato
	SUBROUTINE SUB_SUM_MAT(MDIM, M, N, A, B, C)

	REAL A(MDIM, N), B(MDIM, N), C(MDIM,N)
MDIM è il numero di righe da dare alla subroutine per permettere il calcolo indipendentemente dalla reale dimensione delle matrici
grazie all'MDIM gli emlementi delle due matrici posso essere rintracciati in memoria qualunque sia la dimensione effettiva delle stesse
	
      INTEGER I, J, M, N

creiamo due cicli per sommare gli elementi delle due matrici
il ciclo più esterno serve a spazzolare le righe, quello più interno a spazzolare le colonne
      DO I=1, M
		
		DO J=1, N


			C(I,J)=A(I,J)+B(I,J)
			
		END	DO
		
	END DO
	END