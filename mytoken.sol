// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "Alfa";
    string public tokenAbbrv = "ALF";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address _address, uint _value) public {
        require(_address != address(0));
        require(_value > 0);

        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value);
        require(_value > 0);

        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
