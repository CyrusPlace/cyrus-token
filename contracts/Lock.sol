// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor()
        ERC20("Cyrus Token", "CYTN")
        Ownable(msg.sender)
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn (address to, uint256 amount ) public {
        _burn(to, amount);
    }

    function transfer (address to, uint256 value) public override virtual returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }
}
