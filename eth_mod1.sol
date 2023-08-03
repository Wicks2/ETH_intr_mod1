// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UniqueContract {
    // Private variable to store a secret number
    uint private secretNumber = 42;

    // Public variable to store the value set by the contract
    uint public storedValue;

    // Function to set the value after validating certain conditions
    function setValue(uint _newValue) public {
        // require statement to ensure the new value is not zero
        require(_newValue != 0, "Value cannot be zero");

        // assert statement to ensure the new value is not greater than 100
        assert(_newValue <= 100);

        // revert statement to disallow a specific secret number
        if (_newValue == secretNumber) {
            revert("Sorry, the secret number is not allowed.");
        }

        // If all conditions are met, set the stored value to the new value
        storedValue = _newValue;
    }

    // Function to get the secret number (teacher won't know this value!)
    function getSecretNumber() public view returns (uint) {
        return secretNumber;
    }
}
