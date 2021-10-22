  pergunta:-	repeat,
	write('Entre com um nome e sobrenome'),nl,
	read(X),
	write('entre com a favorita dessa pessoa'),nl,
	read(Y),
	assert(cor(X,Y)),
	write('Entre com s para sair e c para continuar'),nl,
      read(Z),
	Z== s, !,write('Adeus').
