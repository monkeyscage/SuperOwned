pragma solidity 0.4.11;

contract SmartAsset{

address public owner;
address public superowner;

    function SmartAsset() {
        owner = msg.sender;
    }
    

    modifier onlySuper { //if superowner is not set, owner is super
        if(superowner!=address(0)){
        if (msg.sender != superowner) throw;
        }else{
        if (msg.sender != owner) throw;
        }
        _;
    }
    
    modifier onlyOwner {
        if (msg.sender != owner) throw;
        _;
    }

    //you can transfer ownership only if NO superowner is declared
    function transferOwnership(address newOwner) onlySuper returns(bool){
        owner = newOwner;
        return true;
    }
    
    //you can set a superowner only if NO superowner is already declared
    function setSuperOwner(address newSuperOwner) onlySuper {
        superowner = newSuperOwner;    //can be an address or 0x0
    }
    

}

contract MyContract is SmartAsset{
uint public x;
function set(uint u) onlyOwner{x=u;}

//now you can attach any kind of standard Rent/Borrow Module to your contract, or use it as an asset in a lending process,
//meanwhile the ownership of the cotntract will be in the right hands, according to the needs.

}
