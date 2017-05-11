contract SuperOwned{

address public owner;
address public superowner;
public bool isSuperOwned;

    function owned() {
        owner = msg.sender;
    }

    modifier onlyOwner { //superowner is more important than owner
        if(isSuperOwned){
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
    function setSuperOwner(address newSuperOwner,bool isNowSuperOwned) onlyOwner {
        superowner = newSuperOwner;    //can be an address or nothing
        isSuperOwned=isNowSuperOwned;  //can be true or false
    }

}

contract MyContract is SuperOwned{
//now you can attach any kind of standard Rent/Borrow Module to your contract, or use it as an asset in a lending process.
}

