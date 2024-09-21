// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

//Mapping
//syntex to create Mapping
contract Mapping{

   // mapping from address to uint

   mapping(address => uint) public myMap;


    function get(address _addr)public view returns(uint){
        //Mapping always return a default value.
        //if the value was never set, it will return a default value

        return myMap[_addr];
    }
    function set(address _addr, uint _i)public{
         //update the value of addres
         myMap[_addr] = _i;
    }
    function remove(address _addr)public{
        //Reset the value to the defsult value
        delete myMap[_addr];
    }
}

contract NestedMapping{
   //Nested mapping (mapping from address to another mapping)
   mapping(address=> mapping(uint=>bool))public nested;

   function get(address _addr1, uint _i)public view returns (bool){
      //you can get values from a nested mapping
      //even when it is not initialized
      return nested[_addr1][_i];

   }

   function set(
    address _addr1,
    uint _i,
    bool _boo
   )public{
      nested [_addr1][_i]=_boo;
   }

  function remove(address _addr, uint _i)public{
         delete nested[_addr][_i];
  }


}
