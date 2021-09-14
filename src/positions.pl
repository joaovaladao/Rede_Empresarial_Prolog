:- use_module(library(csv)).
:- use_module(library(apply)).
:-['output'].

:- dynamic position/3.


listPositionsHierarchy:-
        findall([Position, SeniorPosition], position(_, Position, SeniorPosition), PositionsList),
        printPositionsList(PositionsList), nl.