//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PayableSummary {
    constructor() payable {}

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    function payMe() external payable {}

    function callMethod(address payable _to) external payable {
        (bool success, ) = _to.call{value: msg.value}("");
        require(success, "transaction failed");
    }
}
