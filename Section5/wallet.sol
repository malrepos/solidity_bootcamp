//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract wallet {
    address payable thisAddress = payable(address(this));
    mapping(address => uint) public myWallet;

    function deposit() public payable {
        myWallet[msg.sender] += msg.value;
    }

    function getBalance() public view returns (uint) {
        return myWallet[msg.sender];
    }

    function withdraw(address payable _to) public {
        // first cache the value
        uint amountToSend = myWallet[msg.sender];
        myWallet[msg.sender] = 0;
        _to.transfer(amountToSend);
    }
}
