% ============================================================
% ARTI 303 - Lab 7 | Lists (Parts I and II)
% Name: Wesam Kamal Sanbo
% ============================================================

% ============================================================
% Part 1: Basic List Operations (from the lab)
% ============================================================

% member1: check if X is in the list
member1(X, [X|_]).
member1(X, [_|Tail]) :- member1(X, Tail).

% conc: concatenate two lists
conc([], L, L).
conc([X|L1], L2, [X|L3]) :- conc(L1, L2, L3).

% add to front
add(X, L, [X|L]).

% del: delete first occurrence
del(X, [X|Tail], Tail).
del(X, [Y|Tail], [Y|Tail1]) :- del(X, Tail, Tail1).

% ============================================================
% Task 1: deleteElement(X, List, Result)
% Removes ALL occurrences of X. Returns exactly one answer.
% ============================================================
deleteElement(_, [], []). % Base case: empty list
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result). % Skip if head matches X
deleteElement(X, [Y|Tail], [Y|Result]) :-
    X \= Y, % Keep if head doesn't match X
    deleteElement(X, Tail, Result).

% ============================================================
% Task 2: add_at_the_end(X, List, Result)
% Adds X to the end of List.
% ============================================================
% Solution 1: Using recursion (Base case + Recursive case)
add_at_the_end(X, [], [X]).
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).