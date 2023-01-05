//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IterableMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint _value) external {
        balances[_key] = _value;
        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getLength() external view returns (uint) {
        return keys.length;
    }

    function getValue(uint _index) public view returns (uint) {
        return balances[keys[_index]];
    }

    function getTotalValues() external view returns (uint) {
        uint totalValue;
        for (uint i = 0; i < keys.length; i++) {
            totalValue += getValue(i);
        }
        return totalValue;
    }
}
