//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract exampleRequire {
    mapping(address => uint) balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(address _to, uint _amount) public {
        require(
            balances[msg.sender] >= _amount,
            "You do not have enough funds."
        );
        balances[msg.sender] -= _amount;
        payable(_to).transfer(_amount);
    }
}
