// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// 1. Create a ERC20 contract by inheriting from the OpenZeppelin ERC20 contract
contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {
        // 2. Initialize the total supply and allocate all tokens to the contract deployer
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}