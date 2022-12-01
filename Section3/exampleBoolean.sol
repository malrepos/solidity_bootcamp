//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleBoolean {
    bool public myBool;

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }

    // negatve with logical negative
    function negationMyBool(bool _myNegBool) public {
        myBool = !_myNegBool;
    }

    function andMyBool(bool _andBool) public {
        myBool = true && _andBool;
    }

    function orMyBool(bool _orBool) public {
        myBool = false || _orBool;
    }
}
