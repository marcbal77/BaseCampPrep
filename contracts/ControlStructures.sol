// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ControlStructures {
    function compareNumbers(uint256 _number1, uint _number2) external pure returns(string memory) {
        // number1 > number2 => "Number 1 is greater than Number 2"
        // number2 < number2 => "Number 1 is less than Number 2"
        // number1 = number2 => "Number 1 is equal to Number 2"
        
        if (_number1 > _number2) {
            return "Number 1 is greater than Number 2";
        } else if (_number1 < _number2) {
            return "Number 1 is less than Number 2";
        } else {
            return "Number 1 is equal to Number 2";
        }
    }
}