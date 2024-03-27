// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract USDT is ERC20, Ownable {
  uint constant _initial_supply = 500_000 * (10 ** 18);

  constructor() ERC20("Fake USDT", "USDT") Ownable() {
    _mint(msg.sender, _initial_supply);
  }

  function decimals() public pure override returns (uint8) {
    return 6;
  }
}
