subroutine che calcola la somma di due vettori con n componenti
	SUBROUTINE SUB_SUM_VET(N, X, Y, S)
sono richiesti: il numero di elementi dei due vettori, i due vettori
il risultato viene salvato in un vettore S avente lo stesso numero di elementi dei precedenti
	REAL X(N), Y(N), S(N)

definiamo un ciclo che permetta di sommare le coppie di elementi dei due vettori e salvi il risultato come elemento di S
	DO I=1, N

		S(I)=X(I)+Y(I)

	END DO



	END SUBROUTINE