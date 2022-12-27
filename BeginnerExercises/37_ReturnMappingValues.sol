//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ReturnMappingValues {
    mapping(uint => string) citiesMapping;

    function addCities(uint _index, string memory _name) public {
        citiesMapping[_index] = _name;
    }

    function getAllMapping(
        uint _begin,
        uint _end
    ) public view returns (string[] memory) {
        string[] memory citiesArray;
        for (uint i = _begin; i < _end; i++) {
            citiesArray[i] = citiesMapping[i];
        }
        return citiesArray;
    }
}
