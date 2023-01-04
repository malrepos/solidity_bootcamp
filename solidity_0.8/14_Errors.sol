//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Errors {
    function testRequire(uint _i) public pure returns (uint) {
        require(_i > 5, "Not big neough.");
        return _i * _i;
    }

    function testRevert(uint _j) external pure returns (uint) {
        if (_j < 5) {
            revert("Not big enough.");
        }
    }

    uint public num = 123;

    function testAssert() public view {
        assert(num == 123);
    }

    error MyError(address caller, uint i);

    function testCustomError(uint _i) public view {
        if (_i < 5) {
            revert MyError(msg.sender, _i);
        }
    }
}
