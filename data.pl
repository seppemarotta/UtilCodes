wrote(terry, shrdlu).
wrote(bill, lunar).
wrote(roger, sam).
wrote(gottlob, begriffsschrift).
wrote(bertrand, principia).
wrote(alfred, principia).
book(begriffsschrift).
book(principia).
program(lunar).
program(sam).
program(shrdlu).
professor(terry).
professor(roger).
professor(bertrand).
professor(gottlob).
concerns(shrdlu, blocks).
concerns(lunar, rocks).
concerns(sam, stories).
concerns(principia, logic).
concerns(principia, mathematics).
concerns(begriffsschrift, logic).


logician(Professor):-
    book(Book),
    wrote(Professor,Book),
    concerns(Book,logic).
    
fibonacci(0,0):-!.
fibonacci(1,1):-!.
fibonacci(N,Res):-
    N>0,N1 is N-1,N2 is N-2,
    fibonacci(N1,Res1),
    fibonacci(N2,Res2),
    Res is Res1+Res2.
    
sumar(A, B, S):-
    S is A + B. 
    
    
parent(katherine, bertrand).
parent(amberley, bertrand).
parent(katherine, frank).
parent(amberley, frank).
parent(katherine, rachel).
parent(amberley, rachel).
parent(dora, kate).
parent(dora, john).
parent(peter, conrad).
female(katherine).
female(rachel).
female(dora).
female(peter).
female(kate).
parent(bertrand, kate).
parent(bertrand, john).
parent(bertrand, conrad).
male(amberley).
male(frank).
male(bertrand).
male(conrad).
male(john).    
    
    
    
    
on(Item,[Item|Rest]).
on(Item,[DisregardHead|Tail]):-
          on(Item,Tail).
    
sift([],[]).
sift([X|T],[X|Result]):- X > 6,    

    sift(T,Result).                


sift([ThrowAway|Tail],Result):-    

   sift(Tail,Result).              
    
    
   
delete_all([],Obj,Result).
delete_all([Head|Tails],Obj,[Head|Result]):-
           not(Head=Obj) ,
           delete_all(Tails,Obj,Result).
           
delete_all([Head|Tails],Obj,Result):-
            Head=Obj ,
            delete_all(Tails,Obj,Result).
    
    
    
    
    
