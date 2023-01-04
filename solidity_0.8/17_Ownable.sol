//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function setNewOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "not valid address");
        owner = _newOwner;
    }
}
