//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract InsideMappings {
    mapping(uint => string[]) myMapping;

    function addValue(uint _id, string memory _word) external {
        myMapping[_id] = [_word];
    }

    function getMapping(uint _index) external view returns (string[] memory) {
        return myMapping[_index];
    }
}
