padre(pablo, juan).
padre(pablo, andres).
hermano(A, B) :- padre(C, A), padre(C, B).