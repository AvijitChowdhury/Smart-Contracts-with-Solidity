pragma solidity ^0.8.18;


contract StorageMemory{

    //state variables or contract variables
    uint[] public numArray;


    function operate() public{
        numArray.push(10);
        numArray.push(11);
        numArray.push(12);

        uint[] storage newNumArray = numArray;
        newNumArray[1] = 15;
        // uint[] memory newNumArray = numArray;
        // newNumArray[1] = 15;
    }



}