// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        require(newNumber > 0, "Counter: number must be greater than 0");
        number = newNumber;
    }

    function increment() public {
        number = number + 1;
    }

    function decrement() public {
        number = number - 1;
    }

    function reset() public {
        number = 0;
    }

    function getNumber() public view returns (uint256) {
        return number;
    }
}
