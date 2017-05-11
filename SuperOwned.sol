contract SuperOwned{

address public owner;
address public superowner;

    function owned() {
        owner = msg.sender;
    }

    modifier onlyOwner { //superowner is more important than owner
        if(owner!=address(0)){
        if (msg.sender != superowner) throw;
        }else{
        if (msg.sender != owner) throw;
        }
    }

    //you can transfer ownership only if NO superowner is declared
    function transferOwnership(address newOwner) onlyOwner {
        owner = newOwner;
    }
    
    //you can set a superowner only if NO superowner is already declared
    function setSuperOwner(address newSuperOwner) onlyOwner {
        superowner = newSuperOwner;    //can be an address or 0x0
    }
    

}

contract MyContract is SuperOwned{
//now you can attach any kind of standard Rent/Borrow Module to your contract, or use it as an asset in a lending process.
}

