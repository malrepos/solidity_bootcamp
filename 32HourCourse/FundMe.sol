//SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{

uint public minimumUSD = 50 * 1e18;

address[] public funders;
mapping(address => uint) public addressToAmountFunded;

// Get funds from Users
function Fund()public payable{
    require(getConversionRate(msg.value) >= minimumUSD, "You need to send at least 1 ether.");
    payable(address(this)).transfer(msg.value);
    funders.push(msg.sender);
    addressToAmountFunded[msg.sender] = msg.value;
}

function getPrice() public view returns(uint){
    //address 0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
    // ABI 
    AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    (, int price,,,) =  priceFeed.latestRoundData();
    // price = WEI price in USD
    return uint256(price * 1e10); // so we need it in 18 decimals, currently only in 8, so *10
}

function getVersion() public view returns(uint){
    AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    return priceFeed.version();
}

function getConversionRate(uint ethAmount)public view returns(uint) {
    uint ethPrice = getPrice(); // we get the wei price
    uint ethAmountInUsd = (ethPrice * ethAmount) / 1e18; // we calculate the price for the amount
    //ethPrice and ethAmount both have 18 decimals
    // dive by 18 decimals to get 18 decimals
    return ethAmountInUsd;
}

// Withdraw funds
// function Withdraw(){

// }

//Set a minimum funding value in USD
}