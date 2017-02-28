% Author: Vemund
% Date: 08.09.2015


%C = listen med kort spillerene har, Q=spørringen som er en state,A = svaret en får mao nye kunnskapen
%C er nødt til å være i rett rekkefølge og skal ikke inneholde kortene til spørreren.
%Q blir valg av ett annet predikat som velger hvilken state man skal spørre etter.
%eksempelspørring choice([[1,4,18],[6,19,3],[2,20,21],[17,5,11],[12,13,15]],s(5,7,14),A).
%choice([[[6],1, 15, 14], [[5],20, 6, 19], [[4],2, 4, 5], [[3],18, 9, 16], [[2],7, 17, 10 ], [[1],8, 21, 12]],s(5,6,20),A).

%choice(C,Q,A):-  x -> y;z.
%choice([],S,A):-writeln(S),true,!.
choice([H|T],s(X,Y,Z),[A2,A1],W):-  H=[H1|T1],A2=H1,choice1(T1,s(X,Y,Z),[A2,A1],W),!;once(choice(T,s(X,Y,Z),[A2,A1],W)).
choice([],s(X,Y,Z),[A2,A1],W):- W=([Win,T1,T2]), writeln(Win),s(X,Y,Z)==Win,A2=[7],A1=(X,Y,Z);A2=[1],A1=(X,Y,Z).

choice1([H|T],s(X,Y,Z),[A2,A1],W):- H==X -> A1=X;H==Y -> A1=Y;H==Z -> A1=Z;choice1(T,s(X,Y,Z),[A2,A1],W).


win(W,[(X,Y,Z)],U,U2):- write('WE HAVE A WINNNER!!'), writeln(W),W==s(X,Y,Z),U=U2;fail.




%p_check([H|T],A3):- A3=H.


%choice(C,Q,A):-  x -> y;z.
%choice([H|T],s(X,Y,Z),A) :- A==X-> !;A==Y-> !;A==Z -> !.
%choice([H|T],s(X,Y,Z),A):- H=[H1|T1],H1=X;H1=Y;H1=Z>A is X;choice1(T1,s(X,Y,Z),A),choice(T,s(X,Y,Z),A).
%choice([H|T],s(X,Y,Z),A):- H=[H1|T1],H1==X -> A=X;H=[H1|T1],H1==Y -> A=Y;H=[H1|T1],H1==Z -> A=Z;H=[H1|T1],choice1(T1,s(X,Y,Z),A);choice(T,s(X,Y,Z),A).
%choice1([],_,_):- false.
%choice1([H|T],s(X,Y,Z),A):- H==X -> A=X;H==Y -> A=Y;H==Z -> A=Z;choice1(T,s(X,Y,Z),A).