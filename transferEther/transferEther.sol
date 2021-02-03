pragma solidity ^0.5.16;

contract transferEther {
    address public owner;
    uint private amount;
    
    constructor() public {
        //ownerにはこのコントラクトを呼び出したアカウントが設定される
        owner = msg.sender;
    }
    
    function deposit() public payable {
        //この関数を呼び出したアカウントから指定分のEthがコントラクトに入る
        amount += msg.value;
    }
    
    function withdraw() public {
        //この関数を呼び出しt呼び出したアカウントにEthが送金される
        msg.sender.transfer(amount);
    }
}