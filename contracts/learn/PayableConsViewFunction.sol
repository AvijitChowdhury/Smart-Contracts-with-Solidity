pragma solidity ^0.8.18;

contract payableView{
    //if we have a payable constructor than we can send ether to the smart contract

    constructor() payable{


    }
//using view this function will not change the state of network
    function checkBalance() public view returns(uint256){
        //gives the balance of smart contract
        uint256 balance = address(this).balance;
       return balance;}

}