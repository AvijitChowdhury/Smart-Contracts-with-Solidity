// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract SmartBankContract{
    
    //at this address stores 

    mapping(address => uint) public accountList;
    //this modifier will check if the particular account has sufficient amount
    modifier hasBalance(uint _amount){
        require(_amount <= accountList[msg.sender],"Low Balance");
        _;
    } 
    //with payable the contract is going to receive ether and we are updating
    //the account list with the sende's address sender's ether value
    function depositFund() public payable{
        accountList[msg.sender] += msg.value; 

    }
    /*Whoever is try withdraw the either, we 1st validate the balance
    then the amount of ether is transferred back to the address of the withdraw*/
    function withdrawFund(uint _amt) public hasBalance(_amt){
        payable(msg.sender).transfer(_amt);
    }
    //return the total balance of all account stored at the address of this 
    function checkContractBalance() public view returns(uint){
        return address(this).balance;
    }


}