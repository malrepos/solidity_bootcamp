//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ToDoList {
    struct ToDos {
        uint number;
        string todo;
        bool completed;
    }
    ToDos[] public myTodos;

    function addTodo(uint _number, string memory _todo) external {
        myTodos.push(ToDos(_number, _todo, false));
    }

    function updateTodo(uint _index) external {
        myTodos[_index].completed = true;
    }

    function getTodos() external view returns (ToDos[] memory) {
        return myTodos;
    }
}
