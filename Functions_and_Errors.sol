
// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract AssertionExample {
    uint256 public totalValue;

    function deposit(uint256 value) public {
        // Use require to check a condition and revert if it's false
        require(value > 0, "Deposit value must be greater than zero");

        // Use assert to check a condition that should never be false
        assert(totalValue + value > totalValue);

        // Update the total value
        totalValue += value;
    }

    function withdraw(uint256 value) public {
        // Use require to check a condition and revert if it's false
        require(value > 0, "Withdrawal value must be greater than zero");

        // Use revert to unconditionally revert with a custom error message
        if (value > totalValue) {
            revert("Insufficient funds for withdrawal");
        }

        // Update the total value
        totalValue -= value;
    }
}
