// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// here we're telling the compiler we want to compile to the version 0.8.7

contract Greeting {
    function sayHello() external pure returns (string memory) {
        // sayHello -> "hello world";
        return "hello world";
    }
}

// In Solidity, there are multiple types of functions:
// pure functions - a function that doesn't access the state of a contract, such as above function
// view functions - 
// fallback functions, etc.