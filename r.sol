contract r is SuperOwned{
address public c;
uint public p;
uint public peri;
uint public end;
address public temp;
bool public lock;

function r(){
owner=msg.sender;
}

function init(address con,uint pri,uint per){
if(msg.sender!=owner)throw;
c=con;
p=pri;
peri=per;
end=0;
status=0;
lock=false;
}

function setPrice(uint pri) onlyOwner{
p=pri;
}

function setPeriod(uint per) onlyOwner{
peri=per;
}

function buyr() payable{
if(lock)throw;
if(msg.value<p)throw;
if(end>block.number)}{
if(msg.sender!=temp)throw;
end+=peri*(msg.value/p);
}else{
end=block.number+(peri*(msg.value/p))peri;
temp=msg.sender;
}
myContract m=myContract(c);
if(!c.transferOwnership(msg.sender))throw;
}

function lock(bool l) onlyOwner{
lock=l;
}

function claim() onlyOwner returns (bool){
if(block.number<end)throw;
myContract m=myContract(c);
if(!c.transferOwnership(owner))throw;
}

function withdraw(){
if(msg.sender!=owner)throw;
if(!send(msg.sender,this.balance))throw;
}

function close() onlyOwner{
if(block.number<end)throw;
if(!c.setSuperOwner(owner))throw;
kill();
}

function kill() private{
selfdestroy();
}

}


contract myContract{ function transferOwnership(address newOwner)returns (bool){} }
