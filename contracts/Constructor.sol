// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

// Base contract x

contract X{
    string public name;

    constructor(string memory _name){
        name = _name;
    }
}
// Base contract y
contract Y{
    string public text;

    constructor(string memory _text){
        text= _text;
    }
}
// there are two ways to initialize parent contract with parameters.

//pass parameter here in the inheritance list
contract B is X("input to x"), Y("input to Y"){

}

contract C is X, Y{
    //pass the parameter here in the constructor.
    //similar to function modifier

    constructor(string memory _name, string memory _text)X(_name) Y(_text){}
}

// parent constructor are always called in order of inheritance
//regardless of the order of parent contracts listed in the constructor of the child contract.
//1. X
//2. Y
//3. D

contract D is X, Y{
    constructor()X('X was called') Y("Y was called"){}
}
//Order of constructors called
//1.X
//2.Y
//3.E

contract E is X,Y{
    constructor() Y("Y was called") X("X was Called"){}
}