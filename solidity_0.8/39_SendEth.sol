//SPDX-License-Identifier: CCO

pragma solidity ^0.8.0;

contract SendEther{
    constructor() payable{}

    receive() external payable{}

    function sendViaTransfer(address payable _to)external payable{
        _to.transfer(12);
    }

    function sendViaSend(address payable _to)external payable{
        bool sent = _to.send(12);
        require(sent, "send failed");
    }

    function sendViaCall(address payable _to)external payable{
       (bool success, ) = _to.call{value: 12}("");
       require(success, "call failed");
    }
}

contract ReceiveEther {
    event Log(uint amount, uint gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}