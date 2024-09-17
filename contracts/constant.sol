// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

//The Constant Keyword
// once you master the constant keyword it will save you alot of money(gas fee)
// whenever you have a variable in your contract the value won't change MAKE USE OF CONSTANT keyword
contract Constants{
    //70262: this is the execution cost before thw constant keyword was used 
   
     address public  myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
   
    //45697 : this is the execution cost after the constant keyword was used
   // address public constant MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
   
   
   function getConstant() public view returns(address){
         return myAdd;
   }
// 58309 THIS IS THE AMOUNT WE ARE PAYING using the constant keyword
//88880 the amount we are paying without using the constant keyword
// Main use of constant is to save money and gas fee when it is being used when a constant keyword is introduced
}