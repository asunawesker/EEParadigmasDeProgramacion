cancionestupida(0):-nl,write('Gomo ya no gueda shevvezza, -hic- be boy a doddmig...').

cancionestupida(N):-N>1,nl,write(N),write(' botellas de cerveza en el suelo'),nl,
                    write(N),write(' botellas de cerveza'),nl,
                    write('Cojo una y me la bebo'),nl,
                    A is N-1, cancionestupida(A).

cancionestupida(N):-N=1,nl,write(N),write(' bodellia de shegvezza en el zsduelo'),nl,
                    write(N),write(' bodella de segbezha'),nl,
                    write('La gojo y be la bhebo'),nl,
                    A is N-1, cancionestupida(A).