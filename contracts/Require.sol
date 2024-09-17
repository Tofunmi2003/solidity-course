// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
// Solidity error handling using the "REQUIRE KEYWORD"
//REQUIRE KEYWORD IN SOLIDITY
// the require statement syntex carrys require(statement, message you want to display)
/*contract Require{
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
*/
//ASSERT ERROR HANDLER

/*contract AssertStatement{
 
     bool public result;

     function checkOverFlow(uint256 _num1, uint256 _num2)public{
       uint256 sum = _num1+_num2;
       assert(sum <=225);
       result = true;
     }

     function getResult() public view returns(string memory){
        if (result == true){
          return "No Over";
        }else {
          return "Overflow exist";
        }

     }


}*/

//REVERT ERROR HANDLER

contract RevertStatement{
       function checkOverflow(uint256 _num1, uint256 _num2)public view returns(string memory){

          uint256 sum = _num1+_num2;
          if(sum < 0 || sum > 255){
            revert("overflow exist");
          }else{
            return ("No Overflow");
          }
       }

}