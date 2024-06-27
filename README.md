# MyToken Eth

Here we are trying to build a simple token on ethereum blockchain like ERC-20 like token , where these token can be represented as assets , enabling transactions or rewards .

## Description

This contract is a small token , where we store variables like Token name, Token Abbrv, Totol supply .Then we need to map the address of the user with there balance. After this , we define functions like mint() and burn() , which helps us to add or sub the values passed form the parameter to our balances . Also , we will define some conditions which help us to decide whether the transaction should occur or not. 

## Getting Started

### Installing

* Remix Ide - visit any browser 
* MetaMask  - if u need to compile the contract on injected web i.e on your own wallet.

### Executing program

* To run this program , first we need to create a contract on Remix Ide online at https://remix.ethereum.org/.
* now create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension ( "MyToken.sol"). Copy and paste the following code into the file:
* 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public _TName = "EthAman";
    string public _TokenAvv = "MTA";
    uint256 public _totalSupply = 0;
    // mapping variable here
    mapping(address => uint256) public _balances;
    // mint function
    function mint(address _address, uint256 _value) public {
        _totalSupply += _value;
        _balances[_address] += _value;
    }
    // burn function
    function burn(address _address, uint256 _value) public {
        if (_balances[_address] >= _value){
            _totalSupply -= _value;
            _balances[_address] -= _value;
        }
    }
}



* Once the code is compiled, we can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken.sol" contract from the dropdown menu, and then click on the "Deploy" button.
* Now we can run diffrent types of function which are defined in our contract.
## Help

* make sure to use the right version of solidity and to specify the license key
* while passing the argument to the functions , u can click on arrow beside the fucntion so that u can clearly pass are arguments corretly.

command to run if program contains helper info


## Authors

SHAURYA ANAND


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
