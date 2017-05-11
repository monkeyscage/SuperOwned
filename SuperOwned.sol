contract SuperOwned{

address public owner;
address public superowner;
public bool isSuperOwned;

    function owned() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        if(isSuperOwned){
        if (msg.sender != superowner) throw;
        }else{
        if (msg.sender != owner) throw;
        }
    }

    function transferOwnership(address newOwner) onlyOwner {
        owner = newOwner;
    }
    
    function setSuperOwner(address newSuperOwner,bool isNowSuperOwned) onlyOwner {
        superowner = newSuperOwner;
        isSuperOwned=isNowSuperOwned;
    }

}

contract MyContract is SuperOwned{
//now you can attach any kind of standard Rent/Borrow Module to your contract, or use it as an asset in a lending process.
}

