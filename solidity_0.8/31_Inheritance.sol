//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }

    function bar() public pure virtual returns (string memory) {
        return "A";
    }

    function baz() public pure virtual returns(string memory) {
        return "XYZ";
    }
}

// we inherit from contract A but modify the function
// it must be marked virtual in the parent contract
// and override in the child contract
contract B is A {
    function foo() public pure override returns (string memory) {
        return "B";
    }
}
// we also get the baz function as inherited