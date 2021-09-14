printPositionsList([]).	
printPositionsList([H|T]):- printPositionsItem(H), write_ln(';\n'), printPositionsList(T).

printPositionsItem([]).
printPositionsItem([T]):- write(T).
printPositionsItem([H|T]):- write(H), write(" responde a "), printPositionsItem(T).


printEmployeeList([]).	
printEmployeeList([H|T]):- printEmployeeItem(H), write_ln(';'), printEmployeeList(T).


printEmployeeItem([]).
printEmployeeItem([T]):- write(T).
printEmployeeItem([H|T]):- write(H), write("\t-\t"), printEmployeeItem(T).