// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
// Solidity error handling using the "REQUIRE KEYWORD"
//REQUIRE KEYWORD IN SOLIDITY

contract Require{
    function checkInput(uint256 _input) public view returns(string memory){
       require(_input >= 0, "invalid uint8");
       require(_input <= 255, "invalid uint8");
       
       return "input is uint8";
    }
 function Odd(uint256 _input)public view returns(bool){
    require(_input % 2 != 0);
    return true;
 }

}