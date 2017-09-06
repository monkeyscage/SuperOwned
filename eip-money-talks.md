
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
In the first age Humanity implements Token Assets. Tokens are passive quanities and have no real inner function.
In the second age Humanity implements Smart Assets (Money Talks). Contracts are passive but "qualities based" and can talk and also (being standard)  "manipulate each others".
In the third age (purely theoretical) Smart Assets become active. Quantity based assets may become obsolete, and may be completeley replaced by "qualities based assets". 


## Specification
Any contract implements the (pretty standard) variable "owner".
This standard introduces the concept of "SuperOwner": an entity involved in the manipulation of the ownership of an asset.

# Specification 1
Any smart asset has an owner.
owner

Specification 2
Any smart Asset must be possibly transferred to a new owner

Specification 3
Any Smart Asset must allow to be manipulated by a SuperOwner, the SuperOwner can transfer the ownership of an asset to a new owner, and back.

Specification 4
When the "SuperOwner" is set:
then only the SuperOwner can overwrite the owner.

## Rationale
Example 1: Renting out a contract.
I have my valuable slotmachine. I want to rent it out. I find a Standard Rental module, and I register it as SuperOwner of my slot machine. You pay and become the owner. You can't transfer the ownership, only the SuperOwner can do it. During one week you can trigger any of the function of the slotmachine (you are hte owner). After one week the Rental Module brings back the ownership to me. Removes itself as SuperOwner (it only can do it!) and selfdestroys. [without a superowner the ownership would never come back, and the owner can change the fees of the slot machine and get the income form players for one week]

## Backwards Compatibility
All EIPs that introduce backwards incompatibilities must include a section describing these incompatibilities and their severity. The EIP must explain how the author proposes to deal with these incompatibilities. EIP submissions without a sufficient backwards compatibility treatise may be rejected outright.

## Test Cases
Test cases for an implementation are mandatory for EIPs that are affecting consensus changes. Other EIPs can choose to include links to test cases if applicable.

## Implementation
The implementations must be completed before any EIP is given status "Final", but it need not be completed before the EIP is accepted. While there is merit to the approach of reaching consensus on the specification and rationale before writing code, the principle of "rough consensus and running code" is still useful when it comes to resolving many discussions of API details.

## Copyright
Copyright and related rights waived via [CC0](https://creativecommons.org/publicdomain/zero/1.0/).
