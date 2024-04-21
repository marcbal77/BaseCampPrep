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

    function doNotDisturb(uint _time) external pure returns(string memory) {
        
        if (_time >= 2400) {
        // If _time is greater than or equal to 2400, trigger a panic
            assert(condition);
        } else if 
        // If _time is greater than 2200 or less than 800, revert with a custom error of AfterHours, and include the time provided
        
        // If _time is between 1200 and 1259, revert with a string message "At lunch!"
        
        // If _time is between 800 and 1199, return "Morning!"
        
        // If _time is between 1300 and 1799, return "Afternoon!"
        
        // If _time is between 1800 and 2200, return "Evening!"

    }
}