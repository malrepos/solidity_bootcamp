//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {
    string public message;

    struct Journal {
        uint pageNumber;
        string note;
        uint date;
    }

    Journal[] public journal;

    function updateMessage(string memory _message) external {
        message = _message;
    }

    function updateNotebook(uint _pageNumber, string memory _note) external {
        journal.push(
            Journal({
                pageNumber: _pageNumber,
                note: _note,
                date: block.timestamp
            })
        );
    }
}
