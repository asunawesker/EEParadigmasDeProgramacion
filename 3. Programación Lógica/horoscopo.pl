horoscopo(aries,21,3,20,4).
horoscopo(tauro,21,4,20,5).
horoscopo(geminis,21,5,20,6).
horoscopo(cancer,21,6,20,7).
horoscopo(leo,21,7,20,8).
horoscopo(virgo,21,8,20,9).
horoscopo(libra,21,9,20,10).
horoscopo(escorpio,21,10,20,11).
horoscopo(sagitario,21,11,20,12).
horoscopo(capricornio,21,12,20,1).
horoscopo(acuario,21,1,20,2).
horoscopo(piscis,21,2,20,3).

mes(1,31).
mes(2,28).
mes(3,31).
mes(4,30).
mes(5,31).
mes(6,30).
mes(7,31).
mes(8,31).
mes(9,30).
mes(10,31).
mes(11,30).
mes(12,31).

signo(Dia,Mes,Signo) :- horoscopo(Signo,D1,M1,D2,M2),
 ((Mes=M1,Dia>=D1,mes(M1,D),Dia=<D) ; (Mes=M2,Dia=<D2, Dia>0)).