# AkshayAnand (AKKI) ERC-20 Token

## Overview

AkshayAnand (AKKI) is an ERC-20 token built on the Ethereum blockchain. The token comes with the standard ERC-20 functionalities along with additional features like burning and ownership management. It is created using the OpenZeppelin library for ERC-20 and Ownable contracts.

## Token Details

- **Name**: AkshayAnand
- **Symbol**: AKKI

## Contracts

### 1. AkshayAnand Token Contract

The main token contract is `AkshayAnand.sol`, which inherits from:
- `ERC20`: Standard ERC-20 contract.
- `ERC20Burnable`: Allowing tokens to be burned.
- `Ownable`: Providing ownership functionality.

### 2. Deployment

The token contract is deployed with an initial owner. The initial owner address is specified during deployment.

### 3. Minting

The contract allows the owner to mint new AKKI tokens. Each minting operation generates 1 AKKI token and sends it to the specified address.

```solidity
function mint(address to) public onlyOwner {
    _mint(to, 1 * 10 ** decimals());
}
