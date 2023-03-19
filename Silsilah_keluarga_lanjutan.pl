man(david).
man(jack).
man(john).
man(peter).
man(ray).

women(amy).
women(karen).
women(susan).
women(liza).
women(mary).



suami(david, amy).
suami(jack, karen).
suami(john, susan).

anak(liza, david).
anak(john, david).
anak(susan, jack).
anak(ray, jack).
anak(peter, john).
anak(mary, john).

is_pasutri(X,Y):-suami(X,Y),is_istri(Y,X),is_pasutri(Y,X).
is_istri(X,Y):-suami(Y,X).
is_ayah(X,Y):-anak(Y,X).
is_ibu(Z,Y):-anak(Y,X),suami(X,Z).
is_saudara(X,Y):-anak(X,Z),anak(Y,Z).
is_paman(X,Y):-man(X),is_saudara(X,Z),is_ayah(Z,Y);man(X),is_saudara(X,Z),is_ibu(Z,Y).
is_bibi(X,Y):-women(X),is_saudara(X,Z),is_ayah(Z,Y);women(X),is_saudara(X,Z),is_ibu(Z,Y).
is_ponakan(X,Y):-is_paman(Y,X);is_bibi(Y,X).
is_kakek(X,Y):-is_ayah(X,Z),anak(Y,Z).
is_nenek(X,Y):-is_ibu(X,Z),anak(Y,Z).
is_ayahMertua(X,Y):-is_ayah(X,Z),is_pasutri(Y,Z).
is_ibuMertua(X,Y):-is_ibu(X,Z),is_pasutri(Y,Z).
is_menantu(X,Y):-is_pasutri(X,Z),anak(Z,Y);is_pasutri(X,Z),is_ibu(Y,Z).
saudaraIpar(X,Y):-is_istri(Y,Z),is_saudara(X,Z);suami(Y,Z),is_saudara(X,Z).

