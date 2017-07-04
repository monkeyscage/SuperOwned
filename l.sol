contract l is SuperOwned{
address c;
uint p;
uint perc;
uint peri;
uint end;
address temp;

function l(address con,uint pri,uint per,uint perce){
c=con;
p=pri;
peri=per;
perc=perce;
}

function setPrice(uint pri) onlyOwner{
p=pri;
}

function setPeriod(uint per) onlyOwner{
peri=per;
}

function setPerc(uint perce) onlyOwner{
perc=perce;
}

function buyl() payable{
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

function withdraw(){
if(msg.sender!=owner)throw;
if(!send(msg.sender,this.balance))throw;
}

function kill() private{
selfdestroy();
}

}


contract myContract{ function transferOwnership(address newOwner)returns (bool){} }
