//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

// inherit all functionality from the ERC20 base contract
contract TokenToken is ERC20Capped, ERC20Burnable {
    address payable public owner;
    uint public blockReward;

    // we have a cap on the supply of tokens
    // this amount will be set in the constructor
    // the ERC20Capped function is called and passed our cap parameter
    constructor(
        uint cap_,
        uint _reward
    ) ERC20("OhToken", "OTO") ERC20Capped(cap_ * (10 ** decimals())) {
        // call the internal _mint function, taking 2 parameters
        // the totalSupply from our constructor will fill the amount
        // msg.sender will receive the tokens
        owner = payable(msg.sender);
        // mint 70mil to owner
        // use the decimals function for denomination
        _mint(owner, 70000000 * (10 ** decimals()));
        blockReward = _reward * (10 ** decimals());
    }

    function _mint(
        address account,
        uint256 amount
    ) internal virtual override(ERC20Capped, ERC20) {
        require(
            ERC20.totalSupply() + amount <= cap(),
            "ERC20Capped: cap exceeded"
        );
        super._mint(account, amount);
    }

    function _mintMinerReward() internal {
        _mint(block.coinbase, blockReward);
    }

    function _beforeTokenTransfer(
        address _from,
        address _to,
        uint _value
    ) internal virtual override {
        if (
            _from != address(0) &&
            _to != block.coinbase &&
            block.coinbase != address(0)
        ) {
            _mintMinerReward();
        }
        super._beforeTokenTransfer(_from, _to, _value);
    }

    function setBlockReward(uint amount) public onlyOwner {
        blockReward = amount * (10 ** decimals());
    }

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }
}
