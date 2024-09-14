// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//LOCAL VARIABLES

/*contract LocalVariables{
    uint256 public myNumber;

    //function for local variable

    function Local()public  returns(address,uint256,uint256) {
//variables defined inside functions are called LOCAL VARIABLES 
//AND THOSE VARIABLES ONLY FUNCTION WHEN THE FUNCTION GETS CALLED and it is used locally in a memory
// local variable doesnt store on the blockchain   
   
    uint256 i = 345;
    myNumber = i;
    
    i += 45;
    address myAddress = address(1);


    return (myAddress, myNumber, i);
    
   
   
    }
}
*/
// above we used a local variable to update the local variable

//Global variables


contract GlobalVariables{

    address public owner;
    address public Myblockhash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public Timestamp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasprice;
    bytes public callData;
    bytes4 public Firstfour;

    constructor(){
        owner = msg.sender;
    //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    //this are the important things to keep in mind for this particular variable
    Myblockhash = block.coinbase;
 difficulty = block.difficulty;
    gasLimit = block.gaslimit;
    number = block.number;
    Timestamp = block.timestamp;
    gasprice = tx.gasprice;
    origin = tx.origin;
    callData = msg.data;
    Firstfour = msg.sig;
    
    }

}