//SPDX-License-Identifier: CCO

pragma solidity ^0.8.0;

contract Counter{
    uint public count;

    function inc() external{
        count++;
    }
    function dec() external{
        count--;
    }
}

interface ICounter {
    function count() external view returns(uint);
    function inc() external;
}

contract CallInterface {
    uint public count;
    function examples(address _counter) external{
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}