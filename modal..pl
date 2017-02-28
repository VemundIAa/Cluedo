% Author: Vemund
% Date: 04.02.2016

 %Q: [[s(5,9,21),[1]],[s(6,8,20),[4]],[s(4,12,17),[1]],[s(3,12,14),[1]],[s(5,9,17),[1]]]
 
 %win:s(6,9,17)
 
 %deal:[[[1],19,3,16],[[2],21,2,7],[[3],14,13,8],[[4],12,1,6],[[5],4,11,20],[[6],10,18,15]]
 
 %L: [[[1],[5],[9],[21]], [[2]], [[3]], [[4]], [[5]], [[6]]]
 
%write('L1: '), writeln(L1),

%spørring: modal([[s(4,7,16),[1],[5]],[s(5,11,16),[2],[4]],[s(6,12,21),[3],[5]],[s(6,8,14),[4],[1]],[s(1,11,17),[5],[3]],[s(4,12,19),[6],[2]]],M,M1,[[[1]], [[2]], [[3]], [[4]], [[5]], [[6]]],[[[1],[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]],[[2],[1, 2, 3, 4, 5, 7, 8, 9, 10, 12, 13, 14, 15, 17, 18, 19, 20, 21]], [[3], [1, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 21]], [[4], [1, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 21]], [[5], [1, 2, 3, 4, 5, 7, 8, 9, 10, 12, 13, 14, 15, 17, 18, 19, 20, 21]], [[6], [1, 3, 4, 5, 7, 8, 9, 10, 12, 13, 14, 15, 17, 18, 19, 21]]]).

% modal([],L,L):-!.
% modal(Q,M,L) :- Q= [[s(X,Y,Z),P]|R],  L=[L1|L2],L1=[N|B],write('L1: '), writeln(L1), [P]==L1 -> leggetil(L1,L3,Q),add(L3,L2,L4),write('L4 '),writeln(L4),modal(R,M,L4);
% Q= [[s(X,Y,Z),P]|R],  L=[L1|L2],L1=[N|B],write('NB: '), writeln(B),write('NN: '), writeln(N),write('NP: '), writeln(P), P==N -> leggetil2(N,B,L3,[[X],[Y],[Z]]),add(L3,L2,L4),write('NL4 '),writeln(L4),modal(R,M,L4);
% write('haha_L: '),writeln(L),L=[L1|L2],first_last([L1],L2,NL),write('NL: '), writeln(NL),modal(Q,M,NL).

modal(Q,M1,M2,L,L1):- showcard(Q,M,L),showcard3(Q,M1,M), nocard(Q,M2,L1), lalala(M1,M2).


showcard3(Q,M1,M):- showcard2(Q,M1,M).

modal2(Q,M1,M,L):-  showcard(Q,M,L),showcard2(Q,M1,M).
 
showcard([],L,L):-!.
showcard(Q,M,L) :- Q= [[s(X,Y,Z),P1,P]|R],  L=[L1|L2],L1=[N|B], [P]==L1 -> leggetil(L1,L3,Q),add(L3,L2,L4),showcard(R,M,L4);
 Q= [[s(X,Y,Z),P1,P]|R],  L=[L1|L2],L1=[N|B], P==N -> leggetil2(N,B,L3,[[X],[Y],[Z]]),add(L3,L2,L4),showcard(R,M,L4);L=[L1|L2], first_last([L1],L2,NL),showcard(Q,M,NL).

showcard2([],L,L):-!.
showcard2(Q,M,L) :- Q= [[s(X,Y,Z),P1,P]|R],  L=[L1|L2],L1=[N|B], [P1]==L1 -> leggetil(L1,L3,Q),first_last([L3],L2,L4),showcard2(R,M,L4);
 Q= [[s(X,Y,Z),P1,P]|R],  L=[L1|L2],L1=[N|B], P1==N -> leggetil2(N,B,L3,[[X],[Y],[Z]]),add(L3,L2,L4),showcard2(R,M,L4);L=[L1|L2], first_last([L1],L2,NL),showcard2(Q,M,NL).
 
 

nocard([],M,M):-!.
nocard(Q,M,L):-Q= [[s(X,Y,Z),P1,P]|R],P==[0],!;Q= [[s(X,Y,Z),P1,P]|R], P==[7],!; Q= [[s(X,Y,Z),P1,P]|R], L= [L1|LR],L1=[H|T], P1==H ->first_last([L1],LR,L2), nocard2([X,Y,Z],L2,P,[[]],M1),nocard(R,M,M1);  L= [L1|LR], first_last([L1],LR,L2), nocard(Q,M,L2).

%nocard2([],L,P,NL,M):- write('L: '),writeln(L),NL=[H|T],write('NL: '),writeln(T),append(T,L,M),write('M: '),writeln(M).
nocard2([],L,P,NL,M):- NL=[H|T],append(T,L,M).
%nocard2(C,[],P,NL,M):-  write('HEYOOO: '),writeln(NL),NL=[H|T],nocard2(C,T,P,[[]],M).
nocard2([X,Y,Z],LR,P,NL,M):- LR=[N|R], N=[I|C], I==P ->nocard2([],LR,P,NL,M);  LR=[N|R], N=[I,C], subtract(C,[X,Y,Z],C2),D=[[I,C2]], first_last(D,NL,R2), nocard2([X,Y,Z],R,P,R2,M).
 
%gå gjennom alle lister i B og lage en ny versjon med X, Y og Z i hver av dem. Mao dersom det er tre lister fra før vil det nå bli 9 lister.

% leggetil(L,L2,Q):- Q= [[s(X,Y,Z),P]|R], L=[N|B], B==[] -> L2=[N,[X],[Y],[Z]],write('L2: '), writeln(L2).
 leggetil(L,L2,Q):- Q= [[s(X,Y,Z),P1,P]|R], L=[N|B], B==[] -> L2=[N,[X],[Y],[Z]].
 
% Q= [[s(X,Y,Z),P]|R], L=[N|B],leggetil2(X,B,[],Bx),write('Bx: '), writeln(Bx),leggetil2(Y,B,[],By),write('By: '), writeln(By),leggetil2(Z,B,[],Bz),write('Bz: '), writeln(Bz).


% leggetil2(N1,NR,L,Q):- write('LT_Q: '), writeln(Q),write('LT_NR: '), writeln(NR),semi_perm(NR,Q,[],L1,NR),write('LT_L1: '), writeln(L1),add(N1,L1,L).
 leggetil2(N1,NR,L,Q):- semi_perm(NR,Q,[],L1,NR),add(N1,L1,L).
 
 

 %legger e element inn på sisteplass i listen
 first_last(L,L2,L3) :- rev(L2,NL2),NL2=[H|T], add(H,L,Ll) , first_last2(Ll,T,L3).
 first_last2(L,[],L).
 first_last2(L,L2,L3) :- L2=[H|T], add(H,L,Ll) , first_last2(Ll,T,L3).
 
 
 %setter sammen nye kombinasjoner av nåværende liste L, og de nye kortene som skal inn N, til en ny liste FL, L og BL er den samme BL str for backuplist.
 %spørring: semi_perm([[1],[2],[3]],[[4],[5],[6]],[],FL,[[1],[2],[3]]).

 semi_perm(L,[],L2,L2,BL).
 semi_perm([],N,L2,FL,BL):- N =[N1|NR], semi_perm(BL,NR,L2,FL,BL).
 semi_perm(L,N,L2,FL,BL) :-L=[H|T], N=[N1|NR], first_last(N1,H,H2), add(H2,L2,L3), semi_perm(T,N,L3,FL,BL).
 
 
 
 
/* M= [[[2], [5], [9], [17]], [[3], [5], [9], [21]], [[4], [3], [12], [14]], [[5]], [[6]], [[1], [5, 6, 17], [9, 6, 17], [21, 6, 17], [5, 8, 17], [9, 8, 17], [21, 8, 17], [5, 20, 17], [9, 20, 17], [21, 20, 17], [5, 6, 12], [9, 6, 12], [21, 6, 12], [5, 8, 12], [9, 8, 12], [21, 8, 12], [5, 20, 12], [9, 20, 12], [21, 20, 12], [5, 6, 4], [9, 6, 4], [21, 6, 4], [5, 8, 4], [9, 8, 4], [21, 8, 4], [5, 20, 4], [9, 20, 4], [21, 20, 4]]]
 %analyze(M,A) :-  .
 % M is M from modal, A is the new list of answers, K is the list of known cards.
 analyze([[I|M]|T],K,A) :- writeln(I),writeln(M),writeln(T), remknown(M,K,[],A).
 %,write('LT_NR: '), writeln(M1), duplicates(M1, M2).
 
 %remknown([],[HK|HT],M1,M1).
 remknown([],K,M,M).
 remknown([H1|T],K,M1,M2) :- writeln(H1),writeln(T), remknown1(H1,K,[]) -> add(H1,M1,M), remknown(T,K,M,M2);remknown(T,K,M1,M2).
 
 remknown1([H1|T],[HK|HT],M1):- H1 == HK -> false;add(H1,M1,M3),remknown1(T,[HK|HT],M3).
 remknown1([],[HK|HT],M1) :- remknown1(M1,HT,[]).
 remknown1(_,[],[]):- true.
 
 
 test10(A):- modal([[s(5,9,21),[1]],[s(6,8,20),[4]],[s(4,12,17),[1]],[s(3,12,14),[1]],[s(5,9,17),[1]]],M,[[[1]], [[2]], [[3]], [[4]], [[5]], [[6]]]), analyze(M,[4,12,17],A).
 
*/
 lalala(M,M1):- open('hogwarts.txt',write,Stream), write(Stream,M1), nl(Stream),write(Stream,M),close(Stream).

 


 analyzer(Q,W,L,L2,W2):- W=[Win,ML,E], showcard(Q,M,[[[1]], [[2]], [[3]], [[4]], [[5]], [[6]]]), nocard(Q,M2,ML),add(M,E,E2), anSC(E2,M2,M2,[],N), remover(N,M2,NM2,L,L2),W2=[Win,NM2,E2],!.
 
 anSC(M,[],M2,NewM,N):- anSC(M,M2,M2,NewM,N).
 anSC([],_,M2,M,R):- rev(M,R),!.
 anSC([[]|T],_,M2,M,N):- anSC(T,M2,M2,M,N).
 anSC([M|Rm],[M2|Rm2],M4,NewM,N):- M=[H1|T1],H1=[H|T], M2=[H2,T2], H==H2 -> assemble(T,T2,[],L1),add([H|L1],NewM,NewM2), anSC([T1|Rm],Rm2,M4,NewM2,N);M=[H1|T1], first_last([H1],T1,NM), anSC([NM|Rm],[M2|Rm2],M4,NewM,N).
 

 remover([],M2,M2,L,L).
 remover([H|T],M2,NM2,L,L2) :-  length(H,Num), Num==2 -> H=[H1,T1],remover2(H1,T1,M2,M3,0),add(H1,T1,T3),run2(L3,T3,L), remover(T,M3,NM2,L3,L2); remover(T,M2,NM2,L,L2).
 
 remover2(_,_,M,M,5):- !.
 remover2(H1,T1,[M|MR],M4,N):-N1 is N+1,  M=[H,T], H1=\=H -> subtract(T,T1,T3), first_last([[H,T3]],MR,M3),remover2(H1,T1,M3,M4,N1);first_last([M],MR,MR2),remover2(H1,T1,MR2,M4,N).

 assemble([],T2,L,L).
 assemble([H|T],T2,L,L1):- length(H,N),intersection(H,T2,H2),length(H2,N2), N==N2 -> add(H2,L,M), assemble(T,T2,M,L1);assemble(T,T2,L,L1).
 
 
  %anSC2(Q,M1,M2,NewM1,N2).
 M==[],anSC([Rm],[M2|Rm2],M4,NewM,N);.


 anSC2([Q1|QR],[],_,NewM1,N).
 anSC2([Q1|QR],[M1|Rm],[M2|Rm2],NewM1,N):- Q1= [s(X,Y,Z),P1,P2],  M1=[H|T], M2=[H2,T2], H==P2, H2==P1 -> assemble(T,T2,[],L1), add([H|L1],NewM1,NewM2), anSC2(QR,Rm,Rm2,NewM2,N); first_last(M1,Rm,NM),anSC2([Q1|QR],NM,[M2|Rm2],NewM1,N).
 
 
 showcard2(Q,M1,[[[1]], [[2]], [[3]], [[4]], [[5]], [[6]]]),