
start:-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu_loop(Basket).


menu_loop(Basket):-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE . '),
    read(Choice),
    choice(Choice, Basket).


choice(e, _ ) :-
    writeln('Goodbye!').


choice(d, Basket) :-
    nl,
    display_items(Basket),
    menu_loop(Basket).


choice(a, Basket) :-
    write('enter the item you want to add it '), nl,
    write('|: '),
    read(NewItem),
    NewBasket = [NewItem | Basket],
    writeln('The item has been added'),
    menu_loop(NewBasket).


display_items([]).


display_items([Head | Tail]) :-
    writeln(Head),
    display_items(Tail).
