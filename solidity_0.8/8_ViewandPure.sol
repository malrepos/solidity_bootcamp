//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ViewandPure {
    uint public num = 42;

    function View() external view returns (uint) {
        return (num);
    }

    function Pure() external pure returns (uint) {
        return 7 + 3;
    }
}
