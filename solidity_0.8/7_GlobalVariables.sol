//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint) {
        address owner = msg.sender;
        uint timeNow = block.timestamp;
        uint blockNum = block.number;
        return (owner, timeNow, blockNum);
    }
}
