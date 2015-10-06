inicial(1).
aceptacion(1).

transicion(1,2,a).
transicion(1,2,b).
transicion(2,1,a).
transicion(2,1,b).


analizar(Palabra):-
    inicial(Nodo_inicial),
    recorrer(Nodo_inicial,Palabra).

recorrer(Nodo_inicial,Palabra):-
      transicion(Nodo_inicial,Nodo_Siguiente,Letra),
      dividir(Letra,Palabra,NuevaPalabra),
      recorrer(Nodo_Siguiente,NuevaPalabra).

recorrer(Nodo,[]):-
        aceptacion(Nodo).

dividir(Letra,[Letra|Resto],Resto).

aggregate_all(count, is_man(X), Count).

