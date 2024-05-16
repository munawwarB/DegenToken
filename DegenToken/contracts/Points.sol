// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Points is ERC20, Ownable {
    mapping(address => bool) public powerBoost;
    mapping(address => bool) public sword;
    mapping(address => bool) public shield;
    mapping(address => bool) public speed;

    mapping(string => uint256) public prices;

    constructor() ERC20("Degen", "DGN") {
        prices["powerBoost"] = 1;
        prices["sword"] = 5;
        prices["shield"] = 8;
        prices["speed"] = 15;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() public pure override returns (uint8) {
        return 0;
    }

    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    function transferTokens(address _rec, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You dont have enough tokens");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _rec, _value);
    }

    function burnTokens(uint _value) external {
        require(
            balanceOf(msg.sender) >= _value,
            "You dont have enough tokens to burn"
        );
        _burn(msg.sender, _value);
    }

    function buyPowerBoost(uint _value) external {
        require(balanceOf(msg.sender) >= _value, "You dont have enough tokens");
        require(
            prices["powerBoost"] <= _value,
            "No enough tokens to buy PowerBoost"
        );
        approve(msg.sender, _value);
        transferFrom(msg.sender, address(this), _value);
        powerBoost[msg.sender] = true;
    }

    function buySpeed(uint _value) external {
        require(balanceOf(msg.sender) >= _value, "You dont have enough tokens");
        require(prices["speed"] <= _value, "No enough tokens to buy speed");
        approve(msg.sender, _value);
        transferFrom(msg.sender, address(this), _value);
        speed[msg.sender] = true;
    }

    function buySheild(uint _value) external {
        require(balanceOf(msg.sender) >= _value, "You dont have enough tokens");
        require(prices["shield"] <= _value, "No enough tokens to buy shield");
        approve(msg.sender, _value);
        transferFrom(msg.sender, address(this), _value);
        shield[msg.sender] = true;
    }

    function buySword(uint _value) external {
        require(balanceOf(msg.sender) >= _value, "You dont have enough tokens");
        require(prices["sword"] <= _value, "No enough tokens to buy Sword");
        approve(msg.sender, _value);
        transferFrom(msg.sender, address(this), _value);
        sword[msg.sender] = true;
    }
}
