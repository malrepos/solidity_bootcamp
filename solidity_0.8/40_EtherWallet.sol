//SPDX-License-Identifier: CCO

pragma solidity ^0.8.0;

contract EtherWallet{
    address payable public owner;

    constructor() payable{
        owner = payable(msg.sender);
    }

    receive() external payable{}

    function Withdraw(uint _amount)external payable{
        require(msg.sender == owner, "you are not the owner");
        require(address(this).balance >= msg.value, "not enough funds");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance()external view returns(uint){
        return address(this).balance;
    }
}