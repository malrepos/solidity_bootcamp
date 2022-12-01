//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleWrapAround {
    uint256 public myUint;

    uint8 public myUint8 = 2 ** 4;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    // calling this function in >=0.8.0 compiler, it will error out
    function decrementUint() public {
        myUint--;
    }

    // to get wrap around in 0.8.0 and above, we enclose the action in "unchecked"
    function wrapAround() public {
        unchecked {
            myUint--;
        }
    }

    function incrementUint8() public {
        myUint8++;
    }
}
