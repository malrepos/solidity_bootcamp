//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Enum {
    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Cancelled
    }
    Status public status;

    struct order {
        address buyer;
        Status status;
    }

    function get() external view returns (Status) {
        return status;
    }

    function set(Status _status) external {
        status = _status;
    }

    function shipped() external {
        status = Status.Shipped;
    }

    function reset() external {
        delete status;
    }
}
