// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0 ;

// Get Funds from users
// withdraw funds 
// set a minimum funding value in USD

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    uint256 public minimumUsd = 50 * 1e18;

    address[] public funders;
    mapping(address => uint256) public addresToAmountFunded;
    function fund() public payable {
        
        require(getConversionRate(msg.value) >= minimumUsd, "Didn't send enough for the transaction");
        funders.push(msg.sender);
    }


    function getPrice() public view returns(uint256){
        // ABI
        // addresses 0x694AA1769357215DE4FAC081bf1f309aDC325306
        AggregatorV3Interface priceFeed =  AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 price,,,) = priceFeed.latestRoundData();

        return uint256(price * 1e10);
    }

    function getVersion() public view returns(uint256) {
        AggregatorV3Interface priceFeed =  AggregatorV3Interface( 0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFeed.version();
    } 

    function getConversionRate(uint256 ethAmount) public view returns(uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUsd = ethPrice * ethAmount/ 1e18;

        return ethAmountInUsd;
    } 
 
    function withdraw() public{}

}