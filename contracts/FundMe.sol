// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0 ;

// Get Funds from users
// withdraw funds 
// set a minimum funding value in USD

contract FundMe {
    function fund() public payable {
        
        require(msg.value > 1e18, "Didn't send enough for the transaction");
    }


    function getPrice() public {
        // ABI
        // addresses 0x694AA1769357215DE4FAC081bf1f309aDC325306
    }

    function getConversionRate() public {}
    function withdraw() public{}

}