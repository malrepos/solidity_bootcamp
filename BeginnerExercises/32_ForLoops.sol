//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ForLoopExercises {
    uint[] myArray = [10, 11, 12, 13];
    uint sum;
    uint bigNum;
    uint[] evenArray;

    function findSum() external {
        for (uint i = 0; i < myArray.length; i++) {
            sum += myArray[i];
        }
    }

    function bigNumber() external {
        for (uint i = 1; i < myArray.length; i++) {
            if (myArray[i] > bigNum) {
                bigNum = myArray[i];
            }
        }
    }

    function setEvenArray() external {
        for (uint i = 0; i < 100; i++) {
            if (i % 2 == 0) {
                evenArray.push(i);
            }
        }
    }

    function indexNumber(uint _num) external view returns (uint) {
        for (uint i = 0; i < myArray.length; i++) {
            if (myArray[i] == _num) {
                return i;
            }
        }
    }

    function getValue() external view returns (uint, uint, uint[] memory) {
        return (sum, bigNum, evenArray);
    }
}
