//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract WillThrow {
    function exampleFunction() public pure {
        require(false, "error");
    }
}

contract errorHandling {
    string reason = "You done fucked up";
    event errorLogging(string reason);

    function catchError() public {
        WillThrow will = new WillThrow();
        try will.exampleFunction() {
            //add code to do
        } catch Error(string memory reason) {
            emit errorLogging(reason);
        }
    }
}
