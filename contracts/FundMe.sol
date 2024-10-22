// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0 ;

// Get Funds from users
// withdraw funds 
// set a minimum funding value in USD

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    function fund() public payable {
        
        require(msg.value > 1e18, "Didn't send enough for the transaction");
    }


    function getPrice() public {
        // ABI
        // addresses 0x694AA1769357215DE4FAC081bf1f309aDC325306
        
    }

    function getVersion() public view returns(uint256) {
        AggregatorV3Interface priceFeed =  AggregatorV3Interface( 0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFeed.version();
    }

    function getConversionRate() public {}

    function withdraw() public{}

}