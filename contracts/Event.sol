// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract EventTicket{

    uint256  numberOfTicket;
    uint256  ticketprice;
    uint256  totalAmount;
    uint256  startAt;
    uint256  endAt;
    uint256  timeRange;
    string  message = "Buy your event ticket";
  //bhere we build out=r constructor to upgrade an pass couple of data
  constructor(uint256 _ticketPrice){
      
      ticketprice = _ticketPrice;
      startAt = block.timestamp;
      endAt = block.timestamp + 7 days;
      timeRange = (endAt - startAt)/ 60/60/24;

  }
//function to buy tickets
    function buyTicket(uint256 _value)public returns(uint256 ticketId){
         numberOfTicket++;
         totalAmount += _value;
         ticketId = numberOfTicket;
   
     }
     function getAmount() public view returns(uint256){
            return totalAmount;
     }

}