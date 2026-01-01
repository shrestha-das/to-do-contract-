// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract TodoApp {
    struct Todo{
        string task;
        bool completed;
    }

    Todo[] public todos;

    function createTask(string calldata _task) external {
        todos.push(Todo({
            task: _task,
            completed: false
        }));
    }

    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }

    function updateTask(uint _index, string calldata _updatedText) external {
        todos[_index].task = _updatedText;
    }

    function getInfoOfTask(uint _index) external view returns(string memory, bool){
        Todo memory todo = todos[_index];
        return (todo.task, todo.completed);
    }

}