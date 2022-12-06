//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract SmartContractWallet {
    // we have an owner for the contract
    address payable public owner;
    // the nest owner fo the smartWallet
    address payable nextOwner;
    // a count of how many guardians agreed to transfer ownership fo the smartWallet
    uint guardianResetCount;
    // a constant of how many guardians we need to reset ownership
    uint public constant confirmationsFromGuardians = 3;

    // the amount whitelisted adddresses can send
    mapping(address => uint) public allowance;
    // a map of whitelisted addresses
    mapping(address => bool) public isAllowedToSend;
    // a map of guardians who can recover this contract/wallet
    mapping(address => bool) public guardians;
    // to make sure a guardian can only vote once on ownership transfer
    mapping(address => mapping(address => bool)) nextOwnerGuardianVoteBool;

    // we use the constructor to set the owner
    constructor() {
        owner = payable(msg.sender);
    }

    // the owner sets who can be a guardian of the smartWallet
    function setGuardian(address _guardian, bool _isGuardian) public {
        require(msg.sender == owner, "You are not the owner.");
        guardians[_guardian] = _isGuardian;
    }

    // a function to propose a new owner
    // it will set the owner to newOwner when we have 3 guardians agree to the transfer
    function proposeNewOwner(address payable _newOwner) public {
        // only guiardians can call the function
        require(guardians[msg.sender], "You are not a guardian.");

        //ensure the guardian has not already voted
        // check the mapping for this particular _newOwner (as this may happen multiple times
        require(
            nextOwnerGuardianVoteBool[_newOwner][msg.sender] == false,
            "You already voted."
        );
        // set the mapping fo rthe guardian to true so he can't vote again
        nextOwnerGuardianVoteBool[_newOwner][msg.sender] == true;
        // make sure the first call sets the nextOwner variable to potential newOwner
        // this if statement will only fire on the first propsal
        if (_newOwner != nextOwner) {
            nextOwner = _newOwner;
            // our count is reset to 0 for the bginning of the new proposal
            guardianResetCount = 0;
        }
        // we increment our count for each time this function is called
        guardianResetCount++;

        // if our count is greater than 3
        // we reset the owner of the contract
        if (guardianResetCount >= confirmationsFromGuardians) {
            owner = nextOwner;
            nextOwner = payable(address(0));
        }
    }

    // we want to set how much a user can send
    function setAllowance(address _for, uint _amount) public {
        // only the owner can do this
        require(msg.sender == owner, "You are not the owner.");
        // we set the amount the owner will give to the address
        allowance[_for] += _amount;

        // we set the address in th isAllowedToSend mappping to true
        // so they can send funds
        if (_amount > 0) {
            isAllowedToSend[_for] = true;
        } else {
            isAllowedToSend[_for] = false;
        }
    }

    // we want to be able to transfer funds out of the smart contract
    // we want to be able to interact with a smart contract with call data
    // s instead of transfer we use call
    // we also want to allow whitelisted addresses to spend up to a certain amount of funds

    function transferFunds(
        address payable _to,
        uint _amount,
        bytes memory _payload
    ) public returns (bytes memory) {
        require(msg.sender == owner, "You are not the owner.");
        // we want to allow specific users to send funds
        if (msg.sender != owner) {
            // these users must be whitelisted
            require(
                isAllowedToSend[msg.sender],
                "You are not allowed to send funds."
            );
            require(
                allowance[msg.sender] >= _amount,
                "You do not have enough funds."
            );
        }
        allowance[msg.sender] -= _amount;
        // we need to check if the call was successful with a boolean
        // it also returns a bytes return data
        (bool success, bytes memory returnData) = _to.call{value: _amount}(
            _payload
        );
        require(success, "Call was not successful.");
        // we can return the returnData if someone called this function from another smart contract
        return returnData;
    }

    // th wallet can receive funds no matter what
    receive() external payable {}
}
