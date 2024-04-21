// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import "hardhat/console.sol";

contract ControlStructures {
    error InvalidNumber();

    function compareNumbers(uint256 _number1, uint _number2) external pure returns(string memory) {
        if(_number1 == 0 && _number2 == 0){
            revert InvalidNumber();
        }
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

    function loop() external pure {
        // for (initialization; condition; increment)
        for(uint256 index=0; index<8; index++){
            console.log("The index is", index);

            if(index == 2) {
                console.log("Index is 2");
                continue;
            }

            console.log("After index == 2");

            if(index == 4) {
                console.log("Index is 4");
                break;
            }
            console.log("End of the loop");
        }
    }
}