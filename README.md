# SC-CBPM

SC-CBPM (Smart Contract for Construction Business Process Management) is a framework proposed by Xuling Ye et.al, to allow *Cascaded and Upgradable Smart Contracts for Blockchain-Aided Construction Business Process Management*

## Instructions
All the USC and CSC solidity files can be directly executed via Remix IDE: https://remix.ethereum.org/ 

To reproduce the validation scenarios:

1. Open Remix IDE and upload the Solidity files listed below.  
2. Compile the contract(s) using the Solidity compiler (version 0.8.x or higher).  
3. Deploy the contract(s) on a local (e.g., Ganache) or test Ethereum network (e.g., Sepolia).  
4. Follow the comments and example inputs within each file to simulate contract execution.


## BPMN examples
- Scenario 1: [BIM_design_case.bpmn](https://github.com/XulingYe/SC-CBPM/blob/main/Scenario%201%20-%20BIM-based%20design%20collaboration/BIM_design_case.bpmn)
- Scenario 2: [Payment_automation_v1.bpmn](https://github.com/XulingYe/SC-CBPM/blob/main/Scenario%202%20-%20Construction%20payment%20automation/Payment_automation_v1.bpmn)
- Scenario 2: [Payment_automation_v2.bpmn](https://github.com/XulingYe/SC-CBPM/blob/main/Scenario%202%20-%20Construction%20payment%20automation/Payment_automation_v2.bpmn)

## USC and CSCs' examples
### USC
- Scenario 2: [UpgradableSmartContract.sol](https://github.com/XulingYe/SC-CBPM/blob/main/Scenario%202%20-%20Construction%20payment%20automation/Proposed%20Solution%20(New)/UpgradableSmartContract.sol)
### CSCs
- Scenario 1: [CSC_BIMDesignCase.sol](https://github.com/XulingYe/SC-CBPM/blob/main/Scenario%201%20-%20BIM-based%20design%20collaboration/CSC_BIMDesignCase.sol)
- Scenario 2: [CascadedSmartContractV1.sol](https://github.com/XulingYe/SC-CBPM/blob/main/Scenario%202%20-%20Construction%20payment%20automation/Proposed%20Solution%20(New)/CascadedSmartContractV1.sol)
- Scenario 2: [CascadedSmartContractV2.sol](https://github.com/XulingYe/SC-CBPM/blob/main/Scenario%202%20-%20Construction%20payment%20automation/Proposed%20Solution%20(New)/CascadedSmartContractV2.sol)
- Automated generate CSCs (Code published): https://github.com/XulingYe/SmartProcess_SmartContractGenerator

## Citation

If you use this code in your research, please cite it as follows:

**Xuling Ye, Xingyu Tao, Jack C.P. Cheng, Markus König**, *Cascaded and Upgradable Smart Contracts for Blockchain-Aided Construction Business Process Management*, 2025. Journal: Automation in Construction (2nd Revision).

## License

This project is licensed under a **Non-Commercial License** (adapted from MIT License). You are free to use, modify, and distribute the software, but **only for non-commercial purposes**. Commercial use is prohibited, including selling, sublicensing, or incorporating this software into proprietary software.

* Copyright (c) 2025 Xuling Ye
* For more details, see the full license section below.

### Full License Text

Non-Commercial License (adapted from MIT License)

Copyright (c) 2025 Xuling Ye

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including the rights to use, copy, modify,
and distribute the Software, but **only for non-commercial purposes**, subject to the following conditions:

1. The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
2. The Software must not be used for commercial purposes, including but not limited to selling, sublicensing, or incorporating the Software into proprietary software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

