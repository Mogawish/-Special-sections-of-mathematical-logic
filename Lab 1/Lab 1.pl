parent(gamiel,mohamed).
parent(gamiel,saif).
parent(gamiel,gana).
parent(hoda,mohamed).
parent(hoda,gana).
parent(hoda,saif).
parent(ahmed,gamiel).
parent(zeina,gamiel).
parent(zakaria,hoda).
parent(hana,hoda).
parent(zakaria,mustafa).
parent(hana,mustafa).
parent(zakaria,ibrahim).
parent(hana,ibrahim).
parent(ahmed,mohamed).
parent(ahmed,naira).
parent(zeina,mohamed).
parent(zeina,naira).
male(ahmed).
male(mohamed).
male(gamiel).
male(mohamed).
male(saif).
male(zakaria).
male(mustafa).
male(ibrahim).
female(zeina).
female(naira).
female(gana).
female(hana).
female(hoda).
birthdate(gamiel, "January 1, 1970").
birthdate(hoda, "February 14, 1975").
birthdate(gana, "July 7, 2005").
birthdate(mohamed, "December 12, 2003").
birthdate(saif, 1/14/2001).
job(mohamed,engineer).
job(gamiel,engineercompany).
job(hoda,teacher).
job(ahmed,doctor).
father(X,Y) :- parent(X,Y),male(X).
sister(X,Y) :- parent(Z,X), parent(Z,Y), female(X),X\==Y.
mother(X,Y) :- parent(X,Y),female(X).
siblings(X,Y) :- parent(Z,X), parent(Z,Y), X\==Y.
son(X,Y):-parent(X,Y),male(X).
son(X,Y):-parent(X,Y),female(X).
job(X,Y):-job(X,Y),male(X).
grandfather(X,Y):- parent(X,Z),parent(Z,Y),male(X).
grandmother(X,Y):- parent(X,Z),parent(Z,Y),female(X).
uncle(X,Z):- parent(Y,Z),parent(G,Y),parent(G,X),X\==Y.
goal1 :- parent(gamiel,gana),female(gana).
goal2 :- parent(ahmed,_),male(ahmed).
goal3 :- (writeln("zeina's grandchildrens are:");parent(gamiel,X),parent(X,Y),writeln(Y)),fail.
goal4 :- parent(mohamed,X),parent(X,baqer), write("gana is zeina granddaughter."), nl; parent(gamiel,mohamed),write("mohamed is gamiel son's."),nl. explain.
