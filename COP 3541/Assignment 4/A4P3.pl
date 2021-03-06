%Problem 3-Part A--------------------------------------Facts:
%
%------------Starters:
starter(green_salad ).
starter(melon       ).
starter(tomato_salad).
starter(rabbit_pate ).
%/////////////////////
%
%--------------------------------Main Dishes:
main(rock_salmon_with_mayonnaise_and_capers).
main(roast_beef_with_mushroom_sauce        ).
main(pasta_courgette_and_cheese_bake       ).
%////////////////////////////////////////////
%
%----------------------Desert:
desert(cheese               ).
desert(yoghurt              ).
desert(montreal_brest_pastry).
%/////////////////////////////
%
%////////////////////////////////////////////////////////////


%-----------------------------------------------------Part B:
%
%------------------------------------------------------Facts:
%
%--------------Status:
status(hungry       ).
status(not_so_hungry).
status(on_diet      ).
%/////////////////////
%
%////////////////////////////////////////////////////////////
%
%
%------------------------------------------------------Rules:
menu(S, X, Y, Z)   %Defines a valid menu selection.
:-
    status(S),   %Makes sure S is a valid status property.

    %Hungry menu type
    (
        S = hungry,   %Make sure S is of type hunger.
        starter(X),   %Make sure X is a starter item.
        main(   Y),   %Make sure Y is a main    item.
        desert( Z)    %Make sure Z is a desert  item.
    );

    %Not so hungry: Option 1:
    (
        S = not_so_hungry,   %Make sure S is of type "not so hungry".
        starter(X)       ,   %Make sure X is a starter item.
        main(   Y)       ,   %Make sure Y is a main    item.
        Z = []               %Make sure Z is not selected.
    );

    %Not so hungry: Option 2:
    (
        S = not_so_hungry,   %Make sure S is of type "not so hungry".
        X = []           ,   %Make sure X is not selected.
        main(  Y)        ,   %make sure Y is a main   item.
        desert(Z)            %Make sure Z is a desert item.
    );

    %Diet menu type:
    (   S = on_diet,   %Make sure S is of type "on diet".
        starter(X) ,   %Make sure X is a starter item.
        Y = []     ,   %Make sure Y is not selected.
        Z = []         %Make sure Z is not selected.
    ).
%
%////////////////////////////////////////////////////////////
%
%////////////////////////////////////////////////////////////
