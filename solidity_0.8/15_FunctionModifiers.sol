//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FunctionModifier {
    bool public paused;
    uint public count;

    modifier notPaused() {
        require(paused == false, "Contract paused");
        _;
    }
    modifier numCap(uint _x) {
        require(_x <= 10, "Number too large.");
        _;
    }

    function Paused(bool _paused) external {
        paused = _paused;
    }

    function Inc(uint _x) external notPaused numCap(_x) {
        count += _x;
    }

    function Dec(uint _x) external notPaused numCap(_x) {
        count -= _x;
    }
}
