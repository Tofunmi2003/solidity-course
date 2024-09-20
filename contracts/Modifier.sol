// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

//MODIFIER
//Importance of Modifier
//---Modifier are code that can be run before and after the function call
//---generally use for 3 reasons
//---the reasons are....1. to restrict access, 2.To Validate inputs 3. And to Guard against reetrancy hack.

contract FunctionModifier{

    address public owner;
    uint256 public x= 10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }
      modifier onlyOwner(){
         require(msg.sender==owner, "Not Owner"); {
          _;  
         }
      }
       modifier validateData(address _addr){
           require(_addr != address(0), "Not valid address");
           _;
       }
    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner){
        owner = _newOwner;
    }
    

            modifier noReentrancy(){
              require(!locked, "No reetrancy");
              locked = true;
              _;
              locked = false;
                 }
             function decrement(uint256 i)public noReentrancy{
                x -= 1;
                if(i>1){
                    decrement(i-1);
                }
             }    


} 