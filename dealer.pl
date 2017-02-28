% Author:Vemund
% Date: 27.08.2015

test(X):-winstates(Select),random_member(X,Select).

%plukker ut en state som er winstate og gir de tre kortene individuelt
test2(X,Y,Z):-winstates(Select),random_member((s(X,Y,Z)),Select).


%del ut kort til en win state og resten til X antall spillere
%eksempelspørring: dealer(L,6,W).ND
%dealer(L,X,Win):- winselector(ND,Win),length(ND,C1),C is C1/X, rs(ND,L,C).

dealer(L,X,Win):- winselector(ND,Win),dealer2(ND,X,L).

%Lager liste med X tomme lister, legger random element fra C inn i tomme lister en etter en.

%dealer2([],X,L).
dealer2(C,X,L):- list(X,[],L1), deal(C,L1,[],L2), rev2(L2,[],L).

list(0,L,L1):- L1 = L, !.
list(X,L,L0):- X1 is X-1, add([[X]],L,L1), list(X1,L1,L0).

deal([],[],L,L2):-  L2=L,!.
deal([],L1,L,L2):-rev(L1,R), append(R,L,L2),!.
deal(C,[],L,L2):- rev(L,R),deal(C,R,[],L2).
deal(C,[L0|L1],F,L4):- random_select(Y,C,R),add(Y,L0,L2), add(L2,F,F1),deal(R,L1,F1,L4).

%list(0,L).
%list(X,L):- X1 is X-1, add([],L,L1), list(X1,L1).

add(X, L, [X|L]).

rev2([],L1,L) :- L = L1.
rev2([H|T],L1,L) :- rev(H,H1), add(H1,L1,L2), rev2(T,L2,L).

rev(L,R):- accRev(L,[],R).
accRev([H|T],A,R):-  accRev(T,[H|A],R).
accRev([],A,A).

%får inn 3 kort fra test og trekker de fra resten av kortene, slik at de resetrende kortene som skal deles ut er igjen.
%legger også wistaten tilbake som en state(unødvendig?).
winselector(ND,Win):- cards2(OD), test2(X,Y,Z),
subtract(OD,[X,Y,Z],ND),s(X,Y,Z)=Win.


mMaker(X,M):-list(X,L,L0),cDeal(L0,[],M).

cDeal([],M,R):- rev(M,R),!.
cDeal([H|T],M,M1):- cards2(C),append(H,[C],H1), add(H1,M,M2), cDeal(T,M2,M1).





