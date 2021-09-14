:-['menu'].

main:-
        csv_read_file('../db/positions.csv', PositionsRows, [functor(position), arity(3)]),
            maplist(assert, PositionsRows),
        csv_read_file('../db/employees.csv', EmployeesRows, [functor(employee), arity(4)]),
            maplist(assert, EmployeesRows),
        menu().