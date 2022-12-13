//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StructExercise {
    struct Numbers {
        uint a;
        uint b;
    }

    Numbers public myPoints;

    function setValues(uint _a, uint _b) external {
        myPoints.a = _a;
        myPoints.b = _b;
    }

    function addValuesTogether() public view returns (uint) {
        return myPoints.a + myPoints.b;
    }
}
