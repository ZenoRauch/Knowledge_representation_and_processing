% sub_input/3 [ID, PROPERTY, PROPERTYVALUE]
sub_input(ID, extras, []):-
    property(ID, extras, List),
    List\=[].

sub_input(ID, extras, [Propertyvalue|Next_propertyvalue]):-
    property(ID, extras, List),
    member(Propertyvalue, List),
    sub_input(ID, extras, Next_propertyvalue).

sub_input(ID, Input, [First, Second|_]):-
    member(Input, [horsepower, cost]),
    property(ID, Input, Number),
    Number >= First,
    Number =< Second.

sub_input(ID, Input, Value):-
    property(ID, Input, ExplValue),
    ExplValue = Value.

% input/3 [ID, list(PROPERTY), list(PROPERTYVALUE)]
input(_,[],[]).
input(Models, [Property|Next_property],[Propertyvalue|Next_propertyvalue]):-
    findall(
        [Brand,Model],
        (
        	is_model(Brand, Model, ID),
    		sub_input(ID, Property, Propertyvalue),
    		input(ID, Next_property, Next_propertyvalue)
        ),
        Models).

