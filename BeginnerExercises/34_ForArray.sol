//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Test {
    // order the array from small to big

    uint[] myArray = [25, 66, 12, 3, 9, 0];

    function orderArray() public {
        uint increment = 0;
        while (increment < myArray.length - 1) {
            for (uint i = 0; i < myArray.length - 1; i++) {
                if (myArray[i] > myArray[i + 1]) {
                    uint tempValue = myArray[i + 1];
                    myArray[i + 1] = myArray[i];
                    myArray[i] = tempValue;
                }
            }
            increment++;
        }
    }

    function getArray() public view returns (uint[] memory) {
        return myArray;
    }
}
