//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
//create a book counter smart contract and also increase and decrease number of books
 
 contract bookCount{
    uint256 public numberOfBooks;

   function AddBooks()public {
        numberOfBooks +=1;
   }
    
    function deleteBooks()public {
        numberOfBooks -=1;
    }
   function TotalNumberOfBooks() public view returns(uint256){
      return numberOfBooks;
       }
 }

 

 //write a smart contract to update the data pf the  state variable that is provided
 /*contract change{
     uint256 public Num = 30 ;
     string public Name = "Tofie";
//Now write a function to update the state variable data
    function UpdateData(string memory _Name, uint256 _Num) public {
        Name = _Name;
        Num = _Num;

    }*/

 