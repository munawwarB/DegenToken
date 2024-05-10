# Points Token Contract

This Solidity smart contract implements an ERC20 token called "Degen" with symbol "DGN" and additional functionality for minting, burning, transferring tokens, and granting power boosts. The contract is licensed under MIT.

## Overview

This contract extends the functionality of ERC20 and Ownable contracts from OpenZeppelin. It includes the following features:

- Minting tokens: Only the owner can mint new tokens and supply them to specified addresses.
- Decimals: Tokens have zero decimals.
- Checking Balance: Users can check their token balance.
- Transferring Tokens: Users can transfer tokens to other addresses.
- Burning Tokens: Users can burn their tokens.
- Redeeming Tokens: Users can redeem tokens and receive power boosts.

## Usage

To use this contract, follow these steps:

1. Deploy the contract to the Ethereum blockchain.
2. Use the `mint` function to supply tokens to desired addresses.
3. Use the `transferTokens` function to transfer tokens to other addresses.
4. Use the `burnTokens` function to burn tokens.
5. Use the `redeemTokens` function to redeem tokens and receive power boosts.

## SPDX-License-Identifier

This contract is licensed under MIT. See the SPDX-License-Identifier at the top of the contract code for more details.

## Version

This contract is compatible with Solidity version ^0.8.9.

## Dependencies

This contract uses OpenZeppelin's ERC20 and Ownable contracts. Make sure to import these contracts into your Solidity environment.

## Disclaimer

This contract is provided as-is and without any warranties. Use it at your own risk.

