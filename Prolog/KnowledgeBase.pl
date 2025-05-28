% is_brand/1 [BRAND]
is_brand(mercedes).
is_brand(tesla).
is_brand(vw).
is_brand(ford).
is_brand(toyota).
is_brand(ferrari).
is_brand(porsche).
is_brand(hyundai).
is_brand(mini).
is_brand(bmw).
is_brand(kia).
is_brand(audi).
is_brand(renault).
is_brand(suzuki).
is_brand(alfa).
is_brand(lotus).
is_brand(fiat).
is_brand(honda).

% is_model/3 [BRAND, CAR_MODEL, ID]
is_model(mercedes, viano, 1).
is_model(tesla, model_y, 2).
is_model(vw, golf_gti, 3).
is_model(ford, tourneo_custom, 4).
is_model(toyota, yaris_cross, 5).
is_model(ferrari, roma, 6).
is_model(porsche, taycan_turbo, 7).
is_model(mercedes, sprinter, 8).
is_model(hyundai, i20, 9).
is_model(mini, cooper_se, 10).
is_model(bmw, x5_xdrive30d, 11).
is_model(kia, carnival_hybrid, 12).
is_model(audi, a5_coupé, 13).
is_model(renault, zoe, 14).
is_model(vw, crafter, 15).
is_model(suzuki, swift_hybrid, 16).
is_model(alfa, romeo_stelvio, 17).
is_model(lotus, evija, 18).
is_model(fiat, cinquecento, 19).
is_model(honda, crv_hybrid, 20).

% property/3 [ID, PROPERTY, PROPERTYVALUE]
% propertyvalue: 
%  [drivetrain: {diesel, electric, gasoline, hybrid}, 
%   horsepower: {number}, 
%   car_type: {cargo_van, compact, convertible, coupe, supercar, suv, van}, 
%   extras: list{backup_camera, cruise_control, navigation, parking_sensors, seat_heating, speakers}, 
%   cost: : {number}]
% 
property(1, drivetrain, gasoline).
property(1, horsepower, 100).
property(1, car_type, van).
property(1, extras, [navigation, backup_camera, parking_sensors]).
property(1, cost, 100000).

property(2, drivetrain, electric).
property(2, horsepower, 180).
property(2, car_type, suv).
property(2, extras, [seat_heating, speakers]).
property(2, cost, 150000).

property(3, drivetrain, gasoline).
property(3, horsepower, 180).
property(3, car_type, compact).
property(3, extras, [parking_sensors, seat_heating]).
property(3, cost, 50000).

property(4, drivetrain, diesel).
property(4, horsepower, 180).
property(4, car_type, van).
property(4, extras, [parking_sensors, speakers, navigation]).
property(4, cost, 50000).

property(5, drivetrain, hybrid).
property(5, horsepower, 100).
property(5, car_type, suv).
property(5, extras, [parking_sensors, backup_camera]).
property(5, cost, 3500).

property(6, drivetrain, gasoline).
property(6, horsepower, 180).
property(6, car_type, supercar).
property(6, extras, [seat_heating, speakers]).
property(6, cost, 300000).

property(7, drivetrain, electric).
property(7, horsepower, 350).
property(7, car_type, coupe).
property(7, extras, [navigation, parking_sensors]).
property(7, cost, 150000).

property(8, drivetrain, diesel).
property(8, horsepower, 180).
property(8, car_type, cargo_van).
property(8, extras, [speakers, parking_sensors, seat_heating]).
property(8, cost, 100000).

property(9, drivetrain, gasoline).
property(9, horsepower, 100).
property(9, car_type, compact).
property(9, extras, [cruise_control, speakers]).
property(9, cost, 20000).

property(10, drivetrain, electric).
property(10, horsepower, 180).
property(10, car_type, convertible).
property(10, extras, [backup_camera, speakers]).
property(10, cost, 10000).

property(11, drivetrain, diesel).
property(11, horsepower, 180).
property(11, car_type, suv).
property(11, extras, [speakers, navigation]).
property(11, cost, 150000).

property(12, drivetrain, hybrid).
property(12, horsepower, 180).
property(12, car_type, van).
property(12, extras, [backup_camera, seat_heating]).
property(12, cost, 50000).

property(13, drivetrain, gasoline).
property(13, horsepower, 380).
property(13, car_type, coupe).
property(13, extras, [seat_heating, navigation, backup_camera]).
property(13, cost, 50000).

property(14, drivetrain, electric).
property(14, horsepower, 180).
property(14, car_type, compact).
property(14, extras, [seat_heating]).
property(14, cost, 50000).

property(15, drivetrain, diesel).
property(15, horsepower, 180).
property(15, car_type, cargo_van).
property(15, extras, [speakers, seat_heating]).
property(15, cost, 100000).

property(16, drivetrain, hybrid).
property(16, horsepower, 70).
property(16, car_type, compact).
property(16, extras, [backup_camera, cruise_control, navigation]).
property(16, cost, 20000).

property(17, drivetrain, gasoline).
property(17, horsepower, 180).
property(17, car_type, suv).
property(17, extras, [backup_camera, speakers]).
property(17, cost, 150000).

property(18, drivetrain, electric).
property(18, horsepower, 350).
property(18, car_type, supercar).
property(18, extras, [backup_camera]).
property(18, cost, 300000).

property(19, drivetrain, gasoline).
property(19, horsepower, 100).
property(19, car_type, convertible).
property(19, extras, [parking_sensors, navigation, seat_heating]).
property(19, cost, 20000).

property(20, drivetrain, hybrid).
property(20, horsepower, 180).
property(20, car_type, suv).
property(20, extras, [cruise_control, parking_sensors]).
property(20, cost, 50000).