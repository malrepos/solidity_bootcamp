//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ReplaceLast {
    uint[] public myArray;

    function remove(uint _index) public {
        myArray[_index] = myArray[myArray.length - 1];
        myArray.pop();
    }

    function getArray() external view returns (uint[] memory) {
        return myArray;
    }

    function test() external {
        myArray = [1, 2, 3, 4];

        remove(1);
        // myArray == [1,4,3]
        assert(myArray.length == 3);
        assert(myArray[0] == 1);
        assert(myArray[1] == 4);
        assert(myArray[2] == 3);
    }
}
