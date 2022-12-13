//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StructTest {
    struct Flowers {
        string name;
        uint price;
        bool available;
    }
    Flowers public myStruct = Flowers("rose", 10, true);
}
