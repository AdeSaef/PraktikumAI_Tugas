anakIbu(andi).
anakIbu(budi).
anakIbu(cika).
anakIbu(dani).
anakIbu(emil).

sukaPermen(andi).
sukaPermen(budi).
sukaPermen(cika).
not(sukaPermen(dani)).
not(sukaPermen(emil)).

is_anakIbu(X):-anakIbu(X).
is_dikasihPermen(X):-anakIbu(X),sukaPermen(X).
is_dikasihUang(X) :-anakIbu(X), not(sukaPermen(X)).



