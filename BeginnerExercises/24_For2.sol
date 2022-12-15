//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ForLoop2 {
    uint[] public num;

    function addValues() public {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            } else if (i == 6) {
                break;
            }
            num.push(i);
        }
    }

    function getValues() public view returns (uint[] memory) {
        return num;
    }
}
