// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

//ARRAY

contract Array{
    //several ways to initialize array
    uint[] public arr;
    uint[] public arr2 =[1,2,3];
    //fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

      function get(uint i) public view returns(uint){
         return arr[i];

      }
     //solidity can return the entire array.
     //but this function should be avoided for
     //arrays that can grow indefinitely in length.
    function getArr()public view returns (uint[] memory){
        return arr;
    }

     function push(uint i) public{
        //Apprnd to array
        //This will increase the array length by 1.
        arr.push(i);
     }
     function pop() public {
        //Remove last element from array
        //this will decrease the array length by 1
        arr.pop();
     }
     function getLength() public view returns(uint){
        return arr.length;
     }
     function remove(uint index) public{
       //Delete does not change the array length
       //it resets the value at index to it's default value,
       //in this case of 0
       delete arr[index];
    }
     function examples() external{
       //create array in memory, only fixed size ca be created
         uint[] memory a = new uint[](5);
     }

}