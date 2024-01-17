// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AkshayAnand is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("AkshayAnand", "AKKI")
        Ownable(initialOwner)
    {}

    function mint(address to) public onlyOwner {
        _mint(to, 1 * 10 ** decimals());
    }
}
