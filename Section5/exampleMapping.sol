//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Wallet {
    paymentReceived public payment;

    function payContract() public payable {
        payment = new paymentReceived(msg.sender, msg.value);
    }
}

contract paymentReceived {
    address public from;
    uint public amount;

    constructor(address _from, uint _amount) {
        from = _from;
        amount = _amount;
    }
}
