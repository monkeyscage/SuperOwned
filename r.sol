contract r{
address c;

function r(address con){
c=con;
}

function kill(){
selfdestroy();
}

}
