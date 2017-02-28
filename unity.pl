% Author: Vemund
% Date: 26.11.2015

%deler ut kort og sender spiller 1 videre til trekkfra

counter(X,0,N,R,R2):- R2 is R/N,!.
counter(X,N,N2,R,R2):-N3 is N-1,write('NNNNNNNNNNNNNNNNNNN: '), writeln(N3), players(6,U), R3 is R + U,write('RRRRRRRRRRRRRRRRRRRRRRRRRRR: '), writeln(R3), counter(X,N3,N2,R3,R2).

players(X,U2):- dealer(L,X,Win),write('deal:'),writeln(L),mMaker(X,M),write('Win:'),writeln(Win),L = [P|T],P=[H|T2],remover2(H,T2,M,M2,0),W=[Win,M2,[]],winstates(WS),trekkfra(P,WS,T,W,U2).

%trekker fra utdelte kort(P) og sender videre til spørring
trekkfra(P,WS,T,W,U2):- write('my cards:'), writeln(P),run2(L,P,WS),length(L,N),write('states left:'), writeln(N), sporring(L,T,P,W,0,U2),write('U: '), writeln(U2).

trekkfra2([A1|A2],WS,T,P,W,Q,U,U2):- W=[X,M,Z], A1==[7],win(X,A2,U,U2),!;write('A:'), writeln([A1|A2]),run2(L,[A1|A2],WS),W=[X,M,Z],remover2(A1,A2,M,M2,0),W2=[X,M2,Z],sporring2(P,T,L,W2,Q,U,U2).

%trekkfra2(A,WS,T,P):- writeln(A),run1(L,A,WS),length(L,N), writeln(N),sporring(L,T,P).


sporring(L,T,P,W,U,U3):-U2 is U+1,random_select(Q,L,R), write('P: '), writeln(P),write('QM:'), writeln(Q),choice(T,Q,[A1,A2],W),write('A1:'), writeln(A1),trekkfra2([A1,A2],L,T,P,W,[[Q,[1],A1]],U2,U3).

%leger P i en ny liste, slik at T blir mindre, når den er tom vil runden være over.
%legger sammen L1 og T2 slik at choice kan brukes. Q er det interesanne her tar med videre gjennom runden.
%A sin relevans for andre spillere vil jeg lege til senere, andre spillere lærer ingenting atm.
%legg til choice(T3,Q,A)

sporring2(P,T,L,W,Q1,U,U2):- add(P,[],L1), T=[T1|T2], append(T2,L1,T3), selecter(Q,T1,W), choice(T3,Q,[A1,A2],W),T1=[S|C],Q2=[[Q,S,A1]], append(Q2,Q1,Q3), sporring2(T1,T2,L1,Q3,L,W,U,U2).

sporring2(T1,[],L1,Q,L,W,U,U2):-append(L1,[T1],L2),L2=[P|T],rev(Q,R),length(L,N1),write('Statesleft OldL: '), writeln(N1),write('Q:'), writeln(R),analyzer(R,W,L,NewL,W1),length(NewL,N),write('states left NewL: '), writeln(N), sporring(NewL,T,P,W1,U,U2).
%sporring2(T1,[],L1,Q,L,W,U,U2):-append(L1,[T1],L2),L2=[P|T],rev(Q,R),write('Q:'), writeln(R),write('L:'), writeln(L1), sporring(L,T,P,W,U,U2).
sporring2(T1,T,L1,Q,L,W,U,U2):-append(L1,[T1],L2), T=[T2|T3], append(T3,L2,T4),selecter(Q1,T2,W), choice(T4,Q1,[A1,A2],W),T2=[S|C], A =[Q1,S,A1], add(A,Q,Q2),sporring2(T2,T3,L2,Q2,L,W,U,U2).


selecter(Q,T1,[W,X,Y]):-W=s(A,B,C), winstates(WS),run2(L2,[A,B,C],WS), random_select(Q,L2,L).
%selecter(Q,T1):- Q= s(1,2,3).

%analyzer(Q,ML,L,L2,OQ,M).

 % analyzer(Q,W,L,L2,W2)
