//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Struct {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota", 2013, msg.sender);
        Car memory lambo = Car({
            model: "Lamborghini",
            year: 1990,
            owner: msg.sender
        });
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2022;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferarri", 2020, msg.sender));

        Car memory _car = cars[0];
    }
}
