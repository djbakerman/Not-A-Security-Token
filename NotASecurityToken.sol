pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NotASecurityToken is ERC20 {
    uint256 public constant interval = 1 days;
    uint256 public lastMinted;
    uint256 public dailySupplyIncrease;

    constructor(uint256 initialSupply, uint256 _dailySupplyIncrease) ERC20("NotASecurityToken", "NAS") {
        _mint(msg.sender, initialSupply);
        dailySupplyIncrease = _dailySupplyIncrease;
        lastMinted = block.timestamp;
    }

    function updateSupply() public {
        require(block.timestamp >= lastMinted + interval, "Not enough time has passed since the last update.");
        _mint(address(this), dailySupplyIncrease);
        lastMinted = block.timestamp;
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
