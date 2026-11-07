% ============================================================
% ARTI 303 - Lab 7 | Shopping Program
% ============================================================

:- dynamic basket/1.

% start with 5 items
init_basket :-
    retractall(basket(_)),
    assertz(basket(coffee)),
    assertz(basket(milk)),
    assertz(basket(chocolate)),
    assertz(basket(apple)),
    assertz(basket(juice)).

menu :-
    nl, writeln('SHOPPING LIST'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    do_action(Choice).

% d - display using recursion and fail
do_action(d) :-
    nl, write('*** SHOPPING LIST ***'), nl,
    ( basket(X), write(X), write(' '), fail ; true ),
    nl, menu.

% a - add item
do_action(a) :-
    nl, write('enter the item you want to add it '),
    read(Item),
    assertz(basket(Item)),
    write('The item has been added.'), nl,
    menu.

% e - exit
do_action(e) :-
    nl, writeln('Goodbye!').

% invalid choice
do_action(_) :-
    nl, write('Wrong choice, try again.'), nl,
    menu.