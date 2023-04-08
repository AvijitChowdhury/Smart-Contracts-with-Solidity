pragma solidity ^0.8.18;

contract PureViewEn{
    uint256 num1 = 2;
    uint256 num2 = 4;
    //view will cost less than any function 
    function sum1() public view returns(uint256){
        return (num1+num2);
    }
    //pure function neither view nor modify the state
    function pureFunc() public pure returns(uint256){
        return 1+1;
    }

}