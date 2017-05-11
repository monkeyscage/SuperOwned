# SuperOwned
A standard way to make your smart contract Borrowable/Rentable/Lendable

You are building a smart contract, and  you feel one day it may have a value.
Will you be able to use it as an asset and borrow money form third party offering your contract as a guarantee?
Or... What if one day a guy comes and asks you to borrow your contract for one week?

Ethereum is very powerful, if a contract is declared as SuperOwned (<a href="https://github.com/monkeyscage/SuperOwned/blob/master/SuperOwned.sol">see code here</a>), so anyone later can build a rent/borrow/lend module, and you can very easily attach it to your contract and exploit the power of those modules.

Once you attach a Module to the contract (you tell the contract its new SuperOwner), only that Module (the superowner) can then detach itself.

In case of renting, once the rent expires, the ownerships changes back, and you can take back the control over your contract.
Usually the owner has special permissions inside the contract. The SuperOwner has NO PERMISSIONS,BUT it is the only one (if existing, declared, and running) able to overwrite the ownership.

So pay attention to what you attach to your beloved valuable contract!

Renting Borrowing and Lending are just ONLY 3 examples of ideal procedures connected to contract OWNERSHIPS.
When a contract is declared as "is SuperOwned", so any kind of trick will be admitted in the future regarding the ownership of the contract, and any module can be easily applied.

Please feel free to suggest changes to the contract.

