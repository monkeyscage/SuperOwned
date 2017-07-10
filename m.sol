pragma solidity 0.4.11;

//0x8bfc3cA59bd7a1D602D293D53303Efe9F2633A4B


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
    function transferOwnership(address newOwner)public onlyOwner returns(bool){
        owner = newOwner;
        return true;
    }
    
    //you can set a superowner only if NO superowner is already declared
    function setSuperOwner(address newSuperOwner)public  onlyOwner {
        superowner = newSuperOwner;    //can be an address or 0x0
    }
    

}

contract m is SuperOwned{
address public c;
myContract public cc;
uint public end;
address public temp;


function m(){
owner=msg.sender;
}

function init(address con,uint endx,address temp){
if(msg.sender!=owner)throw;
cc=myContract(con);
c=con;
end=block.number+endx;
if(!cc.setSuperOwner(temp))throw;
}

function createPeriod(uint endx){
end=block.number+endx;
}

function extend(uint more){
end=end+more;
}


function close() onlyOwner{
if(block.number<end)throw;
if(!cc.transferOwnership(owner))throw;
if(!cc.setSuperOwner(owner))throw;

kill();
}

function kill() private{
selfdestruct(owner);
}

}


contract myContract{address a; function transferOwnership(address newOwner)returns (bool){ a=newOwner; return true;} function setSuperOwner(address newSuperOwner)returns (bool){ a=newSuperOwner; return true;} }
