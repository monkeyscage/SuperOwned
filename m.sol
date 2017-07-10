contract SuperOwned{

address public owner;
address public superowner;

    function SuperOwned() {
        owner = msg.sender;
    }

    modifier onlyOwner { //superowner is more important than owner
        if(superowner!=address(0)){
        if (msg.sender != superowner) throw;
        }else{
        if (msg.sender != owner) throw;
        }
        _;
    }

    //you can transfer ownership only if NO superowner is declared
    function transferOwnership(address newOwner) onlyOwner returns(bool){
        owner = newOwner;
        return true;
    }
    
    //you can set a superowner only if NO superowner is already declared
    function setSuperOwner(address newSuperOwner) onlyOwner {
        superowner = newSuperOwner;    //can be an address or 0x0
    }
    

}

contract m is SuperOwned{
address c;
uint end;
address temp;


function m(){
owner=msg.sender;
}

function init(address con,uint endx,address temp){
if(msg.sender!=owner)throw;
c=con;
end=block.number+endx;
if(!c.setSuperOwner(temp))throw;
}

function createPeriod(uint endx){
end=block.number+endx;
}

function extend(uint more){
end=end+more;
}


function close() onlyOwner{
if(block.number<end)throw;
if(!c.setOwner(owner))throw;
if(!c.setSuperOwner(owner))throw;

kill();
}

function kill() private{
selfdestroy();
}

}


contract myContract{ function transferOwnership(address newOwner)returns (bool){} function setSuperOwner(address newSuperOwner)returns (bool){} }
