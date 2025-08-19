/**
Created by Xuling Ye (xuling.ye@rub.de) 
For SC-CBPM framework Scenario 1 – BIM-based design collaboration
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract CSC_BIMDesignCase
{
    string public currentExecutedFunc;
    string public historicalFuncs;

    // Participant addresses
    address public ARCH;
    address public STRUCT;
    address public CLIENT;

    // Setup functions
    function setupARCH(address participant) public {
        ARCH = participant;
    }
    function setupSTRUCT(address participant) public {
        STRUCT = participant;
    }
    function setupCLIENT(address participant) public {
        CLIENT = participant;
    }

    // Role modifiers
    modifier OnlyARCH() {
        require(msg.sender == ARCH, "Only ARCH can call this function.");
        _;
    }
    modifier OnlySTRUCT() {
        require(msg.sender == STRUCT, "Only STRUCT can call this function.");
        _;
    }
    modifier OnlyCLIENT() {
        require(msg.sender == CLIENT, "Only CLIENT can call this function.");
        _;
    }

    function StartEvent() public payable OnlyARCH() 
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "");
        require(isCorrect, "Cannot execute StartEvent");
        currentExecutedFunc = "StartEvent";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    function Design_BIM_model() public payable OnlyARCH()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "StartEvent");
        require(isCorrect, "Cannot execute Design_BIM_model");
        currentExecutedFunc = "Design_BIM_model";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    function Receive_BIM_model_Struct() public payable OnlySTRUCT()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Design_BIM_model");
        require(isCorrect, "Cannot execute Receive_BIM_model_Struct");
        currentExecutedFunc = "Receive_BIM_model_Struct";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    function Receive_BIM_model_Client() public payable OnlyCLIENT()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Design_BIM_model");
        require(isCorrect, "Cannot execute Receive_BIM_model_Client");
        currentExecutedFunc = "Receive_BIM_model_Client";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    // Model federation with multi-criteria auto-checking and automatic calculation
    function Model_federation(uint testValue) public payable OnlySTRUCT {
        bool isCorrect = compareStrings(currentExecutedFunc, "Receive_BIM_model_Struct");
        require(isCorrect, "Cannot execute Model_federation");
        currentExecutedFunc = "Model_federation";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);

        // Automatic calculation using testValue
        uint detectedClashes = (testValue * 2 + 7) % 15;
        uint maxClashSeverity = (testValue * 4 + 3) % 12;
        uint modelCompleteness = 85 + ((testValue * 5) % 16); // 85-100

        bool hasClashIssue = false;
        // Complex logic: weighted sum and threshold
        uint weightedScore = detectedClashes * 3 + maxClashSeverity * 5 + (100 - modelCompleteness) * 2;
        if (weightedScore > 50 || detectedClashes > clashThreshold || maxClashSeverity > severityThreshold || modelCompleteness < completenessThreshold) {
            hasClashIssue = true;
        }

        if (hasClashIssue) {
            Detect_a_clash_issue();
        } else {
            Update_BIM_model();
        }
    }
    function Detect_a_clash_issue() public payable OnlySTRUCT()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Model_federation");
        require(isCorrect, "Cannot execute Detect_a_clash_issue");
        currentExecutedFunc = "Detect_a_clash_issue";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    function Update_BIM_model() public payable OnlySTRUCT()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Model_federation");
        require(isCorrect, "Cannot execute Update_BIM_model");
        currentExecutedFunc = "Update_BIM_model";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }  
   
    function Receive_the_issue_response() public payable OnlySTRUCT()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Response_the_issue");
        require(isCorrect, "Cannot execute Receive_the_issue_response");
        currentExecutedFunc = "Receive_the_issue_response";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }      
    function Check_the_issue() public payable OnlyARCH()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Detect_a_clash_issue");
        require(isCorrect, "Cannot execute Check_the_issue");
        currentExecutedFunc = "Check_the_issue";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    function Response_the_issue() public payable OnlySTRUCT()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Check_the_issue");
        require(isCorrect, "Cannot execute Response_the_issue");
        currentExecutedFunc = "Response_the_issue";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    function Check_the_request() public payable OnlyARCH()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Post_a_request");
        require(isCorrect, "Cannot execute Check_the_request");
        currentExecutedFunc = "Check_the_request";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    function Response_the_request() public payable OnlySTRUCT()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Check_the_request");
        require(isCorrect, "Cannot execute Response_the_request");
        currentExecutedFunc = "Response_the_request";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    function Post_a_request() public payable OnlyCLIENT()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Receive_BIM_model_Client");
        require(isCorrect, "Cannot execute Post_a_request");
        currentExecutedFunc = "Post_a_request";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }
    function Recive_the_request_response() public payable OnlyCLIENT()
    {
        bool isCorrect = compareStrings(currentExecutedFunc, "Response_the_request");
        require(isCorrect, "Cannot execute Recive_the_request_response");
        currentExecutedFunc = "Recive_the_request_response";
        historicalFuncs = addStrings(currentExecutedFunc, historicalFuncs);
    }

    function addStrings(string memory left, string memory right) private pure returns (string memory){
        if(keccak256(abi.encodePacked(left)) != keccak256(abi.encodePacked("")))
        {   left = string.concat(left , " | ");}
        return string.concat(left , right);
    } 
    
    function compareStrings(string memory a, string memory b) private pure returns (bool) {
        return (keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b)));
    }
}