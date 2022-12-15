//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MappingArray {
    mapping(uint => string) public myMapping;

    uint[] public myArray;

    function addMapping(uint _key, string memory _value) public {
        myMapping[_key] = _value;
    }

    function addArray(uint _num) external {
        myArray.push(_num);
    }

    function getMapping(uint _index) external view returns (string memory) {
        return myMapping[_index];
    }

    function getArray() external view returns (uint[] memory) {
        return myArray;
    }
}
