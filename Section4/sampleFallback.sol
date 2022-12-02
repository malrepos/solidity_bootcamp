//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract SampleFallback {
    uint public lastValueSent;
    address public lastSender;
    string public lastFunctionCalled;

    receive() external payable {
        lastValueSent = msg.value;
        lastSender = msg.sender;
        lastFunctionCalled = "receive";
    }

    fallback() external payable {
        lastValueSent = msg.value;
        lastSender = msg.sender;
        lastFunctionCalled = "fallback";
    }
}
