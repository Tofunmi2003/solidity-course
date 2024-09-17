// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

//SOLIDITY WHILE LOOP
// while loop is a condition keyword
//NOTE! lOOP exhausts gas fee and using loop in your contract is a bad idea always try to avoid loop is your contract
/*contract whileLoop{
    //syntex

   // while(condition){
      //statement or block of code to be executed if the condition is true
    //}
         uint256[] data;
         uint8 k = 0;
    function loop()public returns(uint256[] memory){
       while(k < 5){
          k++;
          data.push(k);
       }
       return data;
    }


}*/

//DO while Loop

//contract DoWhileLoop{
     //syntex for Do-while-Loop
     /*do{
        //here we check for the condition or any block of code to executed
     }while(condition)*/
   //uint256[] data;
   //uint8 j = 0;

  // function loop()public returns(uint256[] memory){
         /*do{
            j++;
            data.push(j);
         }while(j<5);
         return data;

   }*/

contract ForLoop{
   //syntex for ForLoop
   //for(initialized value, test condition, iteration statement){

    // statement or block of code
  // }
     
     uint256[] data;

     function loop()public returns(uint256[] memory){
         for(uint256 i = 0; 1<5; i++){
             data.push(i);
         }
          return  data;
     }


}


