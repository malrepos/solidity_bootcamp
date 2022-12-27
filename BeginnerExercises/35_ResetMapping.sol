//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Campaign {
    mapping(address => uint) public donorsMapping;
    address[] public donorsArray;

    function addDonor() external payable {
        donorsMapping[msg.sender] = msg.value;
        donorsArray.push(msg.sender);
    }

    function withdrawAll() external {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "failed");
        //reset each element in the mappiing
        for (uint i = 0; i < donorsArray.length; i++) {
            donorsMapping[donorsArray[i]] = 0;
            delete donorsArray;
        }
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    function getArrayLength() external view returns (uint) {
        return donorsArray.length;
    }
}
