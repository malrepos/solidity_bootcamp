//SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

import './SimpleStorage.sol';

contract StorageFactory{

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint _simpleStorageIndex, uint _simpleStorageNumber) public{
        // we need the address and ABI to interact with a contract
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint _simpleStorageIndex)public view returns(uint){
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}