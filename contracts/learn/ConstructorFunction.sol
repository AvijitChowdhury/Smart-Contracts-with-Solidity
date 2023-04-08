pragma solidity ^0.8.18;

contract ConstructorFunc{
    address public owner;

    //special function that cannot be called outside
    //its called by only once when the smart contract gets developed on etherium

    constructor(){
        //it holds the address which is used to deploy the contract
        owner= msg.sender;
    }

    function changeOwnership(address newOwner) public{
        require(owner == msg.sender,"Only owner can change the current owner");
        owner = newOwner;

    }


}