//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract S {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract T {
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

//type 1
//declare the constructor variables when specificying inheritance
contract U is S("My Token"),T("Another Token"){

}

//type 2
//declare a constructor, specifiy types and variable name
//match parameter name to parent contracts
contract V is S, T {
    constructor(string memory _name, string memory _text) S(_name) T(_text) {

    }
}

// a combination of type 1 and 2 parent constructor inherits
contract W is S("Mal's Token"),T{
    constructor(string memory _text) T(_text){

    }
}
