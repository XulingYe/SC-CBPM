/**
Created by Xuling Ye (xuling.ye@rub.de) 
For SC-CBPM framework Scenario 2 – Construction payment automation case testing
New deployment using Ethereum Sepolia testnet
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract CascadedSmartContractV2 {
    string public currentExecutedFunc;
    string public historicalFuncs;

    address public Participant_Promisee;
    address public Participant_Validator;
    address public Participant_Promisor;
    string public processModelID = "CascadedSmartContractV2";

    function setupParticipant_Promisee(address participant) public {
        Participant_Promisee = participant;
    }

    function setupParticipant_Validator(address participant) public {
        Participant_Validator = participant;
    }

    function setupParticipant_Promisor(address participant) public {
        Participant_Promisor = participant;
    }

    //Modifiers
    modifier OnlyPromisee() {
        require(
            msg.sender == Participant_Promisee,
            "Only Promisee can access this function."
        );
        _;
    }
    modifier OnlyValidator() {
        require(
            msg.sender == Participant_Validator,
            "Only Validator can access this function."
        );
        _;
    }
    modifier OnlyPromisor() {
        require(
            msg.sender == Participant_Promisor,
            "Only Promisor can access this function."
        );
        _;
    }

    function StartEvent() public payable OnlyPromisee {
        bool isCorrect = compareStrings(currentExecutedFunc, "");
        require(isCorrect, "Cannot execute StartEvent");
        currentExecutedFunc = "StartEvent";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }

    function Submit_Payment_Application() public payable OnlyPromisee {
        bool isCorrect = compareStrings(currentExecutedFunc, "StartEvent");
        require(isCorrect, "Cannot execute Submit_Payment_Application");
        currentExecutedFunc = "Submit_Payment_Application";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }

    function Confirm_Qualified_Work_Quantities() public payable OnlyValidator {
        bool isCorrect = compareStrings(currentExecutedFunc, "Submit_Payment_Application");
        require(isCorrect, "Cannot execute Confirm_Qualified_Work_Quantities");
        currentExecutedFunc = "Confirm_Qualified_Work_Quantities";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }

    function Choose_Payment_Option() public payable OnlyValidator {
        bool isCorrect = compareStrings(currentExecutedFunc, "Confirm_Qualified_Work_Quantities");
        require(isCorrect, "Cannot execute Choose_Payment_Option");
        currentExecutedFunc = "Choose_Payment_Option";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }

    function Issue_Payment_Valuation() public payable OnlyValidator {
        bool isCorrect = compareStrings(currentExecutedFunc,"Choose_Payment_Option");
        require(isCorrect, "Cannot execute Issue_Payment_Valuation");
        currentExecutedFunc = "Issue_Payment_Valuation";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }

    function Issue_Payment_Certificate() public payable OnlyValidator {
        bool isCorrect = compareStrings(currentExecutedFunc,"Issue_Payment_Valuation");
        require(isCorrect, "Cannot execute Issue_Payment_Certificate");
        currentExecutedFunc = "Issue_Payment_Certificate";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }

    function Finalize_Payment() public payable OnlyPromisor {
        bool isCorrect = compareStrings(currentExecutedFunc,"Issue_Payment_Certificate");
        require(isCorrect, "Cannot execute Finalize_Payment");
        currentExecutedFunc = "Finalize_Payment";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }

    function addStrings(string memory left, string memory right)
        private
        pure
        returns (string memory)
    {
        if (
            keccak256(abi.encodePacked(left)) != keccak256(abi.encodePacked(""))
        ) {
            left = string.concat(left, " | ");
        }
        return string.concat(left, right);
    }

    function compareStrings(string memory a, string memory b)
        private
        pure
        returns (bool)
    {
        return (keccak256(abi.encodePacked(a)) ==
            keccak256(abi.encodePacked(b)));
    }
}
