pragma solidity ^0.8.18;

contract StrucFuncContract{
    product public laptop;
    //define custom datatype
    //solidity doesnot support float datatype
    struct product{
        string productName;
        string category;
        uint price;
        uint code;
    }

    function initialize_Product() public{
       laptop=product({productName:"Asus",category:"gadgets",price:120, code:121});
    }
}

