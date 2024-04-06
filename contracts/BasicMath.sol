// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Basic Math Contract
contract BasicMath {
    
    // adder function: attempts to add _a and _b
    // Returns the sum and a boolean indicating whether an overflow occurred
    function adder(uint _a, uint _b) public pure returns (uint sum, bool error) {
        unchecked {
            sum = _a + _b;
            if(sum < _a) { // If overflow occurs, sum will be less than either of the operands
                return (0, true);
            }
        }
        return (sum, false);
    }

    // subtractor function: attempts to subtract _b from _a
    // Returns the difference and a boolean indicating whether an underflow occurred
    function subtractor(uint _a, uint _b) public pure returns (uint difference, bool error) {
        if(_b > _a) { // If underflow occurs, _b is greater than _a
            return (0, true);
        }
        // Safe to perform subtraction as underflow is checked above
        difference = _a - _b;
        return (difference, false);
    }
}