# Metacrafters-Function and Error Project

This repository contains the source code for the `MyContract` smart contract. The contract is written in Solidity version 0.8.25 and implements the `withdraw` function with require, assert, and revert statements, along with the `getContractBalance` function.

## Prerequisites

Before running the smart contract, make sure you have the following prerequisites installed:

- Solidity compiler (version 0.8.25, or latest)
- Ethereum development environment (e.g., Remix, Truffle, Hardhat)

## Getting Started

## Contract Details

### Description

The `MyContract` contract allows the contract owner to withdraw funds from the contract balance. The contract owner is set during the contract deployment.

### Functions

#### `constructor()`

The constructor function is executed once during contract deployment. It sets the contract owner to the address of the message sender.

#### `withdraw(uint amount)`

The `withdraw` function allows the contract owner to withdraw a specified amount of funds from the contract balance. It includes several checks using require statements to ensure the withdrawal conditions are met:
- The amount must be greater than zero.
- The contract balance must be equal to or greater than the requested amount.

If the require conditions are satisfied, the function attempts to transfer the funds to the message sender using the `call` function. The `assert` statement checks if the transfer was successful. If the transfer fails, the function reverts with an error message using the `revert` statement.

#### `getContractBalance()`

The `getContractBalance` function is a view function that returns the current balance of the contract.

## Usage

To use the `MyContract` smart contract, follow these steps:

1. Deploy the contract by calling the constructor function.
2. As the contract owner, call the `withdraw` function and provide the amount to withdraw.
3. Verify that the withdrawal conditions are satisfied and the transfer is successful.
4. To check the current balance of the contract, call the `getContractBalance` function.

## Author

Milan


## License

This project is licensed under the MIT License. See the [LICENCE](https://github.com/abhistormwastaken/Metacrafters-ETH-AVAX-Project/blob/main/LICENSE) file for details.

## Credits

This project is a solution to the project task provided by MetaCrafters.
