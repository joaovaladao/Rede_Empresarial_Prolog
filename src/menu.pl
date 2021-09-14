:- ['positions'].
:- ['employees'].


menu :- 
    write_ln("\n\n"),
    write_ln('====================== Empresa Ficticia ======================'),
    nl,
    write_ln('1 - Listar hierarquia de cargos'),
    write_ln('2 - Gerenciar funcionarios'),
    write_ln('0 - Sair'),
    write_ln(''),
    read(Option),
    write_ln("\n"),
    execute(Option).


execute(Option) :-  Option == 1, listPositionsHierarchy, menu;
                    Option == 2, menuEmployee;
                    Option == 0, exitProgram.


menuEmployee:-
    write_ln("\n\n"),
    write_ln('====================== Menu Funcionario ======================'),
    nl,
    write_ln('1 - Listar funcionarios'),
    write_ln('2 - Listar funcionarios por cargo'),
    write_ln('3 - Buscar um funcionario'),
    write_ln('4 - Cadastrar novo funcionario'),
    write_ln('5 - Promover funcionario'),
    write_ln('6 - Demitir funcionario'),
    write_ln('0 - Voltar ao menu principal'),
    write_ln(''),
    read(OptionEmployee),
    write_ln("\n"),
    executeEmployee(OptionEmployee).


executeEmployee(OptionEmployee) :-  
    OptionEmployee == 1, listEmployees, menuEmployee;
    OptionEmployee == 2, listEmployeesByPosition, menuEmployee;
    OptionEmployee == 3, lookForEmployee, menuEmployee;
    OptionEmployee == 4, insertIntoEmployee, menuEmployee;
    OptionEmployee == 5, updateEmployee, menuEmployee;
    OptionEmployee == 6, fireEmployee, menuEmployee;
    OptionEmployee == 0, menu.


exitProgram:-  
    delete_file('../db/employees.csv'),
    findall(row(Id, Name, Phone, Position), employee(Id, Name, Phone, Position) ,EmployeesList), 
        csv_write_file('../db/employees.csv', EmployeesList),
    write_ln('Encerrando programa...'),
    halt(0).