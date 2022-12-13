contract NewArray {
    bytes32[] myArray;

    function setValue() external {
        myArray = [bytes32("apple"), bytes32("orange")];
    }

    function addValue() public {
        myArray.push(bytes32("apple"));
    }

    function getValue() public view returns (bytes32[] memory) {
        return myArray;
    }
}
