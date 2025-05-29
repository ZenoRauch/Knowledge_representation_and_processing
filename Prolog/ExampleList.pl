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
input(Models, Properties, PropertyValues):-
    findall(
        [Brand, Model],
        (
            is_model(Brand, Model, ID),
            check_all_properties(ID, Properties, PropertyValues)
        ),
        Models).

check_all_properties(_, [], []).

check_all_properties(ID, [Property|RestProps], [Value|RestValues]):-
    sub_input(ID, Property, Value),
    check_all_properties(ID, RestProps, RestValues).