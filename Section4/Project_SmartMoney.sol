//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract SmartMoney {
    address owner = msg.sender;
    uint public accountBalance;
    address payable thisAddress = payable(address(this));

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        thisAddress.transfer(msg.value);
        accountBalance += msg.value;
    }

    function withdraw(uint amount, address recipient) public {
        require(msg.sender == owner, "You do not have permission.");
        accountBalance -= amount;
        payable(recipient).transfer(amount);
    }

    receive() external payable {}

    fallback() external payable {}
}
