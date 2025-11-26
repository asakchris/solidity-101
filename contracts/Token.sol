// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
  address public owner;

  constructor() ERC20("Sour Eva", "EVA") {
    owner = msg.sender;
  }

  function mint(address _to, uint _amount) external {
    require(msg.sender == owner, "Not the owner");
    _mint(_to, _amount);
  }

}