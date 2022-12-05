//SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract exampleAssert {
    // uint8 ranges from 0 to 255
    mapping(address => uint8) public balances;

    function deposit() public payable {
        assert(msg.value == uint8(msg.value));
        balances[msg.sender] += uint8(msg.value);
    }

    function withdraw(address _to, uint8 _amount) public {
        require(
            balances[msg.sender] >= _amount,
            "You do not have enough funds."
        );
        balances[msg.sender] -= _amount;
        payable(_to).transfer(_amount);
    }
}
