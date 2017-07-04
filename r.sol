contract r is SuperOwned{
address c;
uint p;
uint peri;
uint end;
address temp;

function r(address con,uint pri,uint per){
c=con;
p=pri;
peri=per;
}

function setPrice(uint pri) onlyOwner{
p=pri;
}

function setPeriod(uint per) onlyOwner{
peri=per;
}

function buyr() payable{
if(msg.value<p)throw;
end=block.number+peri;
temp=msg.sender;
myContract m=myContract(c);
if(!c.transferOwnership(msg.sender))throw;
}

function claim() onlyOwner returns (bool){
if(block.number<end)throw;
myContract m=myContract(c);
if(!c.transferOwnership(owner))throw;
kill();
}

function withdraw() onlyOwner{
if(!send(msg.sender,this.balance))throw;
}

function kill() private{
selfdestroy();
}

}


contract myContract{ function transferOwnership(address newOwner)returns (bool){} }
