/**
Created by Xuling Ye (xuling.ye@rub.de) 
For SC-CBPM framework Scenario 2 – Construction payment automation case testing
New deployment using Ethereum Sepolia testnet
*/
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract UpgradableSmartContract{

    string public currentExecutedFunc;
    string public historicalFuncs;

    address public linkedCSC;

// Function to call setupParticipant from Cascaded Smart Contract 
    function callSetupParticipant(string memory funcName, address participant) public payable {
        require(linkedCSC != address(0), "Linked CSC address not set");

        // Use delegatecall to call setupParticipant functions on the linked contract
        (bool success, bytes memory data) = linkedCSC.delegatecall(
            abi.encodeWithSignature(funcName, participant)
        );
        require(success, string(data));
    }

    function setLinkedCSC(address csc) public{
        linkedCSC = csc;
    }

// format of funcName should be "functionName()"
    function executeTask(string memory funcName) public payable{
        (bool success, ) = linkedCSC.delegatecall(abi.encodeWithSignature(funcName));
        require(success, "Delegate call failed");
    }
}
