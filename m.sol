contract l is SuperOwned{
address c;
uint end;
address temp;


function m(){
owner=msg.sender;
}

function init(address con,uint endx){
if(msg.sender!=owner)throw;
c=con;
end=block.number+endx;
}

function createPeriod(uint endx){
end=block.number+endx;
}

function extend(uint more){
end=end+more;
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


contract myContract{ function transferOwnership(address newOwner)returns (bool){} function setSuperOwner(address newSuperOwner)returns (bool){} }
