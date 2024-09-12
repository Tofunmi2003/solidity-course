
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyFirstContract{
    string public hey;
    uint256 public age;
// now i want to update the data with help of constructor

//constructor(string memory _hey, uint _age){
    // hey = _hey;
   //  age = _age;
// we can also update the data using function

function addInfo(string memory _hey, uint _age)public{
    hey = _hey;
    age = _age;
}

}

 


