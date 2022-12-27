//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FindAndRemove {
    address[] internal members;

    function becomeMember() external {
        members.push(msg.sender);
    }

    function getAllAddress() public view returns (address[] memory) {
        return members;
    }

    function findAndRemove(address removeMember) public {
        for (uint i = 0; i < members.length; i++) {
            if (members[i] == removeMember) {
                members[i] = members[members.length - 1];
                members.pop();
            }
        }
    }
}
