/**
Created by Xuling Ye (xuling.ye@rub.de) 
For SC-CBPM framework Scenario 2 – Construction payment automation case testing
New deployment using Ethereum Sepolia testnet
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract SmartContractV1{
    
    string currentExecutedFunc;
    string historicalFuncs ="";

    function getCurrentExecutedFunc() public view returns(string memory)
    {   return currentExecutedFunc; }

    function getHistoricalFuncs() public view returns(string memory)
    {   return historicalFuncs;}

    function fInitialePayment() public {
        currentExecutedFunc = "fInitialePayment";
        historicalFuncs = addStrings(historicalFuncs , currentExecutedFunc);
    }

    function fValidatePayment() public {
        currentExecutedFunc = "fValidatePayment";
        historicalFuncs = addStrings(historicalFuncs , currentExecutedFunc);
    }

    function fDisbursePayment() public {
        currentExecutedFunc = "fDisbursePayment";
        historicalFuncs = addStrings(historicalFuncs , currentExecutedFunc);
    }

    function fCompletePayment() public {
        currentExecutedFunc = "fCompletePayment";
        historicalFuncs = addStrings(historicalFuncs , currentExecutedFunc);
    }

    function addStrings(string memory left, string memory right) private pure returns (string memory){
        string memory left_add = string.concat(left , ",");
        return string.concat(left_add , right);
    } 
}
