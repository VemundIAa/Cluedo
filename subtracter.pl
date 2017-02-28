% Author: Vemund
% Date: 04.09.2015

%ws1([s(1,7,13),s(1,7,14),s(1,7,15),s(1,7,16),s(1,7,17),s(1,7,18),s(1,7,19),s(1,7,20),s(1,7,21),s(2,8,13),s(2,8,14),s(2,8,15),s(2,8,16),s(2,8,17),s(2,8,18),s(2,8,19),s(2,8,20),s(2,8,21),s(3,9,13),s(3,9,14),s(3,9,15),s(3,9,16),s(3,9,17),s(3,9,18),s(3,9,19),s(3,9,20),s(3,9,21),s(4,10,13),s(4,10,14),s(4,10,15),s(4,10,16),s(4,10,17),s(4,10,18),s(4,10,19),s(4,10,20),s(4,10,21),s(5,11,13),s(5,11,14),s(5,11,15),s(5,11,16),s(5,11,17),s(5,11,18),s(5,11,19),s(5,11,20),s(5,11,21),s(6,12,13),s(6,12,14),s(6,12,15),s(6,12,16),s(6,12,17),s(6,12,18),s(6,12,19),s(6,12,20),s(6,12,21)]).
%ws2([s(1,8,13),s(1,8,14),s(1,8,15),s(1,8,16),s(2,7,13),s(2,7,14),s(2,7,15),s(2,7,16)]).

%skal få inn liste med utdelte kort, trekker tra alle states som har kortet i seg.
%eksempelspørring: run(L,[[1],1,5,19]).

%test(L):-dealer([D|R],6,W),writeln(D),run(L,D).

run(L,N):- winstates(WS),run2(L,N,WS),length(L,N1),write('states left:'), writeln(N1).

run2(L1,[H|T],WS):-run1(L1,T,WS).

run1(L,[],WS):- L=WS.
run1(L1,[H|T],WS):-subs(H,WS,WS,L), run1(L1,T,L).

%trekker fra alle states som inneholder kort N
%spørring: subs(7,[s(1,8,13),s(1,8,14),s(1,8,15),s(1,8,16),s(2,7,13),s(2,7,14),s(2,7,15),s(2,7,16)],[s(1,8,13),s(1,8,14),s(1,8,15),s(1,8,16),s(2,7,13),s(2,7,14),s(2,7,15),s(2,7,16)],L).
subs2(_,[],L1,L1).
subs2(N,[H|T],L1,L3):- subs(N,T,L1,L3).
%subs(N,L,L1):- L=[H|T],not(H=s(N,_,_);H=s(_,N,_);H=s(_,_,N))-> writeln(L1).
subs(N,L,L1,L3) :-L=[H|T],(H=s(N,_,_);H=s(_,N,_);H=s(_,_,N)) -> subtract(L1,[H],L2),subs(N,T,L2,L3);subs2(N,L,L1,L3).