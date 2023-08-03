# UniqueContract

This Solidity smart contract, named UniqueContract, enables users to set a stored value while adhering to specific conditions. Additionally, the contract includes a secret number that can be retrieved.

## Contract Details

- **SPDX-License-Identifier:** MIT
- **Solidity Version:** ^0.8.0

## Functions

### `setValue(uint _newValue)`

This function allows users to set the stored value while ensuring certain conditions are met.

- **Input:** `_newValue` - The new value to be set. It must not be zero, and it must not exceed 100.
- **Conditions:**
  - The `_newValue` must not be zero; otherwise, the function will revert with the message "Value cannot be zero."
  - The `_newValue` must not be greater than 100; otherwise, the function will trigger an assert.
  - If the `_newValue` matches the secret number stored in the contract, the function will revert with the message "Sorry, the secret number is not allowed."
- **Visibility:** Public

### `getSecretNumber()`

This function allows users to retrieve the secret number stored in the contract.

- **Returns:** The secret number (uint).
- **Visibility:** Public
- **Note:** The secret number is unknown to the teacher!

## Usage

Deploy this contract on the Ethereum blockchain using a compatible Ethereum development environment, such as Remix, Truffle, or Hardhat. After deployment, interact with the contract by calling the provided functions.

Author: Abhay Partap Singh Rana https://www.linkedin.com/in/abhay-rana-4520a5220

License This project is licensed under the MIT License - see the LICENSE.md file for details.This code is licensed under the MIT License. You can find the license text in the SPDX-License-Identifier comment at the beginning of the contract.

