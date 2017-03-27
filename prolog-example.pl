% Paul Bagley
% CSCI 4230
% Assignment 5

%consult('assign5data.pl').

% Question 1
mother(Mother, Child) :- parent(Mother, Child), female(Mother).

% Question 2
father(Father, Child) :- parent(Father, Child), male(Father).

% Question 3
sibling(Sibling1, Sibiling2):- parent(Parent, Sibling1), parent(Parent, Sibling2).

% Question 4
first_cousin(Cousin1, Cousin2) :- parent(Parent1, Cousin1), parent(Parent2, Cousin2), sibling(Parent1, Parent2).

% Question 5
ancestor(Ancestor, Descendant) :- 
	parent(Ancestor, NewAncestor), ancestor(NewAncestor, Descendant).

% Question 6
common_ancestor(Ancestor, Person1, Person2) :-
	ancestor(Ancestor, Person1), ancestor(Ancestor, Person2).
	
% Question 7
%do_reverse(List, Reverse) :- 
%	do_reverse([H|T], Reverse) :-
%		do_reverse(T, [Reverse | H]).
		
% Question 8
%insert_item(Item, List, Result) :-
%	insert_item(Item, [H|T], [H|Result]):- Item < H,
%		append(Item, List).
%		Insert_item(Item, [H|T], Result) :- Insert_item(Item, T, Result).		

% Question 9
%insertion_sort(List, SortedList) :-

% Question 10
%is_union(Set1, Set2, Union) :-

% Question 11
%is_intersection(Set1, Set2, Intersection) :-