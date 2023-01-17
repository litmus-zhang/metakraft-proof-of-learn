
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {

    address owner;

    modifier onlyOwner{
        require( msg.sender == owner, "You are not authorized" );
        _;
    }

    function greet() public onlyOwner returns ( string memory){
        return "Hello World";
    }
}
