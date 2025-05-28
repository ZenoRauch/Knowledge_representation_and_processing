# Prolog

Prolog is a tool to create knowledge bases and query these based on logic. Due to me buying a car during this module, my group and I decided to build a small knowledge base about cars with a reference to [AutoScout24](https://autoscout24.ch). The different example files showcase different use cases of Prolog and show the usage of logic to gain implicit information from explizit information.

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
in [ExampleList.pd](ExampleList.pd), I provided a possibility to dynamically apply a filter. this can be used to 