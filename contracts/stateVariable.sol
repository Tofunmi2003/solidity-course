// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// State Variables in solidity
// keep few things in mind
// state variables are variables that are stored in the blockchain.
contract StateVariable{
  

    // string public defaultText =  "work harder";
    // uint256 public defaultNum = 5;

     //bytes public defaultBytes = "hey Tofie";


   //uint256[] public myNumber;
      // this is  how you write a state variable       
    string public myText;          
     uint256 public myNum;
   
   // here we used constructor to update the data of the state variable in the samrt contract and mainly construction is often used to pass data into a smart contract.
  // there are also different ways to update data into the state variable by using the functions keywords
   //constructor(string memory _myText, uint _myNum){
          // myText = _myText;
          // myNum = _myNum;
   //}
// so here is the difference between using constructor and function to update a state variable 
     function AddVariable(string memory _myText, uint _myNum) public {
         myText = _myText;
         myNum = _myNum;

     }
 


}