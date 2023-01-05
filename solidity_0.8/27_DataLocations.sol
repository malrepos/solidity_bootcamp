//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples() external returns (uint[] memory) {
        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});
        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        MyStruct memory myStruct1 = myStructs[msg.sender];
        myStruct1.text;

        uint[] memory myArray = new uint[](3);
        myArray[0] = 234;
        return myArray;
    }
}
