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

error AfterHours(uint time);

    function doNotDisturb(uint _time) public pure returns (string memory) {
        if (_time >= 2400) {
            // This will cause a transaction failure with a Panic error (panic code for invalid input)
            revert("Invalid time: exceeds 24-hour format");
        }
        // If _time is greater than 2200 or less than 800, revert with a custom error of AfterHours, and include the time provided
        if (_time > 2200 || _time < 800) {
            revert AfterHours(_time);
        }
        // If _time is between 1200 and 1259, revert with a string message "At lunch!"
        if (_time >= 1200 && _time <= 1259) {
            revert("At lunch!");
        }
        // If _time is between 800 and 1199, return "Morning!"
        if (_time >= 800 && _time <= 1199) {
            return "Morning!";
        }
        // If _time is between 1300 and 1799, return "Afternoon!"
        if (_time >= 1300 && _time <= 1799) {
            return "Afternoon!";
        }
        // If _time is between 1800 and 2200, return "Evening!"
        if (_time >= 1800 && _time <= 2200) {
            return "Evening!";
        }
        // Just a precautionary line, technically should never hit this due to covered ranges above
        revert("Invalid time: out of defined ranges");
    }
}