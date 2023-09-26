// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyToken {
    string public tokenName = "SOLAR";
    string public symbol = "SL";
    uint public totalSupply = 0;
    mapping(address => uint) public balances;

    function mint(address _address, uint value) public {
        totalSupply += value;
        balances[_address] += value;
    }

    function burn(address _address, uint value) public {
        require(balances[_address] >= value, "Insufficient balance");
        totalSupply -= value;
        balances[_address] -= value;
    }
}
