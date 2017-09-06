
## Preamble

    EIP: <to be assigned>
    Title: Money Talks - Standard for Smart [contract based] Assets
    Author: TimeTraveller
    Type: Standard Track
    Category (*only required for Standard Track): ERC 
    Status: Draft
    Created: 2017-09-05


## Simple Summary
The universe of Ethereum Assets orbits around 2 main standards. The first is the well known ERC20, important because not only it recognizes a token as an asset you can own and transfer, but also because it admits [ approveAndCall() ] the existence of an external ecosystem of tools meant to manipulate or be manipulated by those tokens. The second standard is the one introduced by this ERC: MoneyTalks. According to this standard, any smartcontract with "value" is built in a way to admit ownership, ownership transfer, and the existence of an external ecosystem of Standard Modules meant to MANUIPULATE THE OWNERSHIP of that valuable contract. Thanks to this standard approach, any contract with value can be treated like a Standard Smart Asset.
This standard completes the economy of Ethereum and the vision of a world orbiting around contracts (as assets), as an added value to a previous world only based on ERC20 assets.

## Abstract
Smart Contracts can have a value, therefore they need to be defined in a standard way, so that any external Standard Module can manipulate them in term of ownership, making possible to build a whole economy based on Smart Assets. Smart Assets will be easily Rentable/Lendable/Autctionable by means of third party modules. The basic concept is to make possible a "temporary ownership" or any other similar application.

## Motivation

### In the first age Humanity implements Token Assets.
Tokens are passive quanities and have no real inner function.
### In the second age Humanity implements Smart Assets (Money Talks).
Contracts are passive but "qualities based" and can talk and also (being standard)  "manipulate each others".
### In the third age (purely theoretical) Smart Assets become active.
Quantity based assets may become obsolete, and may be completeley replaced by "qualities based assets", and their active ecosystem.


## Specification
Any contract implements the (pretty standard) variable "owner".
This standard introduces the concept of "SuperOwner": an entity involved in the manipulation of the ownership of an asset.

### Specification 1
Any smart asset has an owner.
owner

### Specification 2
Any smart Asset must be possibly transferred to a new owner

### Specification 3
Any Smart Asset must allow to be manipulated by a SuperOwner, the SuperOwner can transfer the ownership of an asset to a new owner, and back.

### Specification 4
When the "SuperOwner" is set:
then only the SuperOwner can overwrite the owner.

## Rationale
### Example 1: Renting out a contract.
I have my valuable slotmachine. I want to rent it out. I find a Standard Rental module, and I register it as SuperOwner of my slot machine. You pay and become the owner. You can't transfer the ownership, only the SuperOwner can do it. During one week you can trigger any of the function of the slotmachine (you are hte owner). After one week the Rental Module brings back the ownership to me. Removes itself as SuperOwner (it only can do it!) and selfdestroys. [without a superowner the ownership would never come back, and the owner can change the fees of the slot machine and get the income form players for one week. Let's say that we make things "universally escrowable"]

### Example 2: Creating ETF baskets of slotmachines
Bancor introduced a nice idea: Fill a basket with various ERC20 and tokenize the basket into a unique token.
This ERC introduces the idea of filling the basket with various slotmachines, later tokenized.
The tokenization may be temporary. Ideally you can tokenize any smart contract, if you define it in a standard way, so that any developer can build a standard tokenizer, ready for any Smart Asset, and at the same time the OWNERSHIP is managed at a different level, according to the specific needs.

### Example 3: exchange ring
We have 10 slot-machines and 10 friends connected into an exchange ring. Everyday the ownerships of the slot machine rotate around the ring. The Superowner is needed to do the job, while keeping ownership rights available at Owners level.

### Example 4: A rental paradox
We have 2 Smart Assets.
They have a value because they are Rental Contracts, and they are renting out a Smart Asset.
Contract A is renting out Contract B.
Contract B is renting out Contract A.
[these things aren't possible with Token Assets]


## Copyright
free
