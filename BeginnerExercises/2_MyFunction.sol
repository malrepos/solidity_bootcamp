pragma solidity ^0.8.0;

contract MyFunction {
    string public fruitName = "Orange";

    function getFruitName() public view returns (string memory) {
        return fruitName;
    }
}
