//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Sender {
    receive() external payable {}

    function withDrawTransfer(address payable _to) public {
        _to.transfer(10);
    }

    function withdrawSend(address payable _to) public {
        _to.send(10);
    }
}

contract ReceiverNoAction {
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    receive() external payable {}
}

contract ReceiverAction {
    uint public balanceReceived;

    receive() external payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
