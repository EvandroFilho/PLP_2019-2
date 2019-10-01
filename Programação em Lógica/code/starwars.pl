
personagem(cliegg).
personagem(shmi).
personagem(anakin).
personagem(luke).
personagem(padme).
personagem(leia).
personagem(rey).
personagem(qui_gon).
personagem(obi_wan).
personagem(yoda).
personagem(dooku).
personagem(mace).
personagem(kylo).
personagem(rey).
personagem(palpatine).
personagem(darth_maul).
personagem(kit_fisto).
personagem(grievous).

jedi(anakin).
jedi(luke).
jedi(rey).
jedi(qui_gon).
jedi(obi_wan).
jedi(yoda).
jedi(dooku).
jedi(mace).
jedi(kit_fisto).

sith(anakin).
sith(dooku).
sith(kylo).
sith(palpatine).
sith(darth_maul).
sith(grievous).

darkside(X):-
    jedi(X),
    sith(X).

pai(cliegg, anakin).
pai(shmi, anakin).
pai(anakin, luke).
pai(anakin, leia).
pai(padme, leia).
pai(padme, luke).
pai(han_solo, kylo).
pai(leia, kylo).

avo(X, Y) :-
    pai(X,Z),
    pai(Z,Y).

tio(X, Y) :-
    pai(Z, Y),
    pai(W, Z),
    pai(W, X).

mestre(qui_gon, obi_wan).
mestre(qui_gon, yoda).
mestre(yoda, dooku).
mestre(yoda, mace).
mestre(yoda, obi_wan).
mestre(yoda, luke).
mestre(yoda, anakin).
mestre(obi_wan, luke).
mestre(anakin, luke).
mestre(luke, kylo_ren).
mestre(luke, rey).

/*Sith*/
mestre(darth_plagueis, palpatine).
mestre(palpatine, anakin).
mestre(anakin, darth_maul).
mestre(anakin, dooku).

padawan(X, Y) :- jedi(X), jedi(Y), mestre(Y, X).

matou(darth_maul,qui_gon).
matou(obi_wan,darth_maul).
matou(obi_wan,grievous).
matou(palpatine,mace).
matou(palpatine,kit_fisto).
matou(palpatine,anakin).
matou(anakin,dooku).
matou(anakin,palpatine).
matou(anakin,obi_wan).
matou(kylo_ren,han_solo).
