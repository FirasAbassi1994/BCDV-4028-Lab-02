 SPDX-License-Identifier MIT
pragma solidity ^0.8.0;

contract ContractCodeChecker {
    function hasContractCode(address _contractAddress) external view returns (bool) {
        bool hasCode;
        assembly {
             Here, we are Retrieving the size of the code at the given address
            let size = extcodesize(_contractAddress)
            
             Here, we are Setting the hasCode to true if the size is greater than 0
            hasCode = gt(size, 0)
        }
        return hasCode;
    }
}