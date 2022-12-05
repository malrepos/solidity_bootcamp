//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleErrorRequire {
    uint public number;

    function storeNumber(uint _number) external payable {
        //make sure the user pays 2 ether
        require(msg.value == 2 ether, "Value sent needs to be 2 ether.");
        number = _number;
    }

    function storeNumberRevert(uint _number) external payable {
        if (_number > 2 ether) {
            revert("You need to send 2 ether");
        }
        number = _number;
    }

    uint public num = 123;

    // we assert that in this contract num should always = 123
    // if it doesn't something has gone wrong

    function testAssert() public view {
        assert(num == 123);
    }

    // somewhere in our contract we accidentally update num

    function fooBar() public {
        num += 1;
    }

    error MyError(address _caller, uint _value);
    uint public newnumber;

    function testCustomError(uint _num) public {
        newnumber = _num;
        if (_num > 10) {
            revert MyError(msg.sender, _num);
        }
    }
}
