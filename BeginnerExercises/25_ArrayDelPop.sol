//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// delete and pop array

contract ArrayDelete {
    uint[] myArray = [10, 11, 12, 13, 14, 15];

    function deleteValue(uint _element) external {
        delete myArray[_element];
    }

    function getValues() external view returns (uint[] memory) {
        return myArray;
    }

    function popValue() external {
        myArray.pop();
    }

    function remOrdered(uint _index) external {
        for (uint i = _index; i < myArray.length - 1; i++) {
            myArray[i] = myArray[i] + 1;
        }
        myArray.pop();
    }
}
