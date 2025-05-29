# Prolog

Prolog (PROgramming with LOGic) is a programming language to create knowledge bases and query these based on logic. Due to me buying a car during this module, I used much this scenario much for my programming I built a mini knowledge base about car with a reference to [AutoScout24](https://autoscout24.ch). The different example files showcase different use cases of Prolog and show the usage of logic to gain implicit information from explizit information.

The knowledge base is kept pretty slim. It consist out of three different predicates:
| Predicate | Description | Possible Values |
| -------- | -------- | -------- |
| `is_brand/1` | provides confirmation, whether term is a brand or not. A model has to be from a car brand | strings as mercedes, tesla or porsche |
| `is_model/3` | generates a car model, resembles the data structure of a relational database. `is_model/3` takes a car brand, the car model name and an id as terms. The id should be unique. The car brand is the key to the brand. The id is the key to the predicate `property/3`. It is handeled as the car id. | [mercedes, viano, 1], [tesla, model_y, 2] |
| `property/3` | Predicate is used to generate properties to a car. As a first term, the predicates takes an id as a term. This references the car id. The second term is the property. at the moment, 5 properties are available: [`drivetrain`,`horsepower`,`car_type`,`extras`,`cost`]. In the following table, the properties will be described. | [5, drivetrain, hybrid] |

| Property | Property Values | Description |
| -------- | -------- | -------- |
| drivetrain | diesel, electric, gasoline, hybrid |  |
| horsepower | number |  |
| car_type | cargo_van, compact, convertible, coupe, supercar, suv, van |  |
| extras | list{backup_camera, cruise_control, navigation, parking_sensors, seat_heating, speakers} |  |
| cost | number |  |

## Lists
In [ExampleList.pd](ExampleList.pl), I provided a possibility to dynamically apply a filter. This can be used to create conjunction or disconjunction with dynamic use. Using the predicates `input/3` and `sub_input/3`, the filter was useable.

For the predicate `input/3`, I created two rules. 
```
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
```
To learn more about logic, I wanted to use recursion. But due to me being lazy in the sense of having no nerves to click additional buttons, I wanted to use `findall`. First, I created two `input/3`-clauses, which were surrounded by `findall`. This led to only one filter being applied. Therefore, a helping clause `check_all_properties` was implemented. This handels the recursion and is not automatically applied in the `findall`.

For the predicate `sub_input/3`, I created four rules.
```
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
```

The first two rules again handle a recursion with the head-tail principle. The third rule provide the possibility, to give a range of two numbers and the designated value is between these values. This makes searching for price and horsepower quite easy. The last rule is an unification, where the searched value has to be the value in the property. 
For all rules applies the principle, that the search variable is either filled with a value or not, therefore this is a depth-search with backtracking. This explains the usage of `finall/3`, otherwise the user would not get a whole lsit of possible cars.

To apply filter, use the following queries:
```
?-input(Models,[cost],[[10000,30000]]).
?-input(Models,[horsepower],[[100,200]]).
?-input(Models,[drivetrain],[hybrid]).
?-input(Models,[car_type],[suv]).
?-input(Models,[extras],[[speakers]]).
```
To apply multiply filters, combine the individual list to two:
```
?-input(Models,[extras,car_type],[[backup_camera],suv]).
?-input(Models,[horsepower,car_type],[[100,250],suv]).
```