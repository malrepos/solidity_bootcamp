//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StructArray {
    struct Cities {
        uint id;
        string name;
    }

    Cities myCity1 = Cities(1, "Seoul");

    Cities[] public myCityArray;

    function addArray() public {
        myCityArray.push(myCity1);
    }

    function updateArray(uint _id, string memory _name) public {
        myCityArray.push(Cities(_id, _name));
    }

    function getArray() public view returns (Cities[] memory) {
        return myCityArray;
    }
}
