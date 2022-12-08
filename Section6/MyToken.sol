//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public admin;

    constructor() ERC20("MyToke", "TOK") {
        _mint(msg.sender, 1000 * 10 ** 18);
        admin = msg.sender;
    }

    function mint(address _to, uint _amount) external {
        require(msg.sender == admin, "You do not have permission.");
        _mint(_to, _amount);
    }

    function burn(uint _amount) external {
        _burn(msg.sender, _amount);
    }
}
