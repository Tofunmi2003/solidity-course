
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


//create a smart contract that will count the number of  NFT 

contract NFTCounter{

    uint256 public numberOfNFT;
    //create a function to increase the number of NFTs
    function addNFT()public {
      numberOfNFT +=1;
    }
   // create another function to decrease NFTs

   function deleteNFT() public{
      numberOfNFT -=1;

   }
  //check total NFTs
  function checkTotalNFT()public view returns (uint256){
     return numberOfNFT;
  }



} 
 
