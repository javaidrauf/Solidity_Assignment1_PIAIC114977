pragma solidity >= 0.5.0 < 0.9.0;

contract saylani{
    
    modifier onlyBy() {
        if (address(this).balance == 10000000000000000000){
            _;
        }
    }
    
    function receiveEther() public payable {
        
    } 
    
    function checkBalance() public view returns(uint){
        return address(this).balance;    
    }
    
    function destructContract() public onlyBy() payable{

        selfdestruct(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    }
    
    function getValue() public view returns(uint8){
        return 40;
    }
    
}


