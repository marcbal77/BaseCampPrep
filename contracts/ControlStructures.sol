// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import "hardhat/console.sol";

contract ControlStructures {

    function fizzBuzz(uint _number) external pure returns(string memory) {
        // return "Fizz" if the _number is divisible by 3
        // return "Buzz" if the _number is divisible by 5
        // return "FizzBuzz" if the _number is divisible by 3 and 5
        // return "Splat" if none of the above conditions are true
        if (_number % 3 == 0 && _number % 5 == 0) {
            // return "FizzBuzz" if the _number is divisible by 3 and 5
            return "FizzBuzz";
        } else if (_number % 3 == 0) {
            // The number is divisible by 3
            return "Fizz";
        } else if (_number % 5 == 0) {
            // return "Buzz" if the _number is divisible by 5            
            return "Buzz";    
        } else {
            // return "Splat" if none of the above conditions are true
            return "Splat";                    
        }
    }
}