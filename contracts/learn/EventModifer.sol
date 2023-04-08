pragma solidity ^0.8.18;

contract EventModifierContract{

    event logUserTxt(address indexed userAddress,uint256 amount);

    modifier onlyTwoEther(){
        //msg.value holds the amount of ether that was sent
        require(msg.value==1 ether);
        _;//this is how we close the modifier
    }

    function sentEther() public payable onlyTwoEther(){
        emit logUserTxt(msg.sender, msg.value);

    }


}