//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StructMapping {
    struct Cities {
        string name;
        string country;
        uint population;
    }

    mapping(uint => Cities) citiesMapping;

    Cities[] citiesArray;

    function createCities(
        uint _index,
        string memory _name,
        string memory _country,
        uint _population
    ) public {
        Cities memory newCity = Cities(_name, _country, _population);
        citiesMapping[_index] = newCity;
        citiesArray.push(newCity);
    }

    function getArray() public view returns (Cities[] memory) {
        return citiesArray;
    }
}
