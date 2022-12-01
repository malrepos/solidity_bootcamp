//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleUint {
    // we can define a sepcific value when initializing a storage valiable
    uint public myUint = 42;

    uint8 public myUint8 = 250;

    uint16 myUint16;

    uint32 myUint32;

    uint64 myUint64;

    uint128 myUint128;

    int public myInt = -10;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    // increment uint8 until it hits the maximum value
    // eventually the transaction fails and reverts
    // it prevents the overflow and reverts to 255

    function incrementMyyUint8() public {
        myUint8++;
    }

    // increment an int from negative to positive
    function incrementMyInt() public {
        myInt++;
    }
}
