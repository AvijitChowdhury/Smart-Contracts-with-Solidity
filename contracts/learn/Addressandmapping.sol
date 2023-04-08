pragma solidity ^0.8.18;

contract AddressandMapping{
    address user1 =0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    //at a particular address  store a uint value
    mapping(address=> uint) public balance;

    function getBalance() public{
        balance[user1]=300;
    }
}