// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract ERC20 {
    uint public totalSupply;
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;
    string public name = "test";
    string public symbol = "TST";
    uint8 public decimals = 18;

    function transfer(address recipient, uint amount) external returns (bool) {
        balanceOf[recipient] += amount;
        balanceOf[msg.sender] -= amount;
        return true;
    }

    function approve(address spender, uint amount) external returns (bool) {
        allowance[msg.sender][spender] = amount;
        return true;
    }

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) public returns (bool) {
        allowance[sender][msg.sender] -= amount;
        balanceOf[sender] -= amount;
        balanceOf[recipient] += amount;
        return true;
    }

    function mint(uint amount) public payable returns (bool) {
        balanceOf[msg.sender] += amount * 10 ** 18;
        totalSupply += amount * 10 ** 18;
        return true;
    }

    function burn(uint amount) external returns (bool) {
        balanceOf[msg.sender] -= amount;
        totalSupply -= amount;
        return true;
    }
}
