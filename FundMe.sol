// SPDX-License-Identifier: MIT

// get funds 
// widr...
// set min amount req


pragma solidity ^0.8.18;

import  {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
  uint256 public minUsd = 5;

    function fund() public payable  {
        minUsd = minUsd + 1;
        require(msg.value >= minUsd,"Amount sent is to low!"); //1 ETH
    }
   
    function getLatestPrice() public view returns (uint256) {
      AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);

      (,int answer,,,) = priceFeed.latestRoundData();

      return uint(answer) * 1e10;
}
         
   function getConversionRate() public  {}

   function getVersion () public view returns (uint256) {

    return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
   }

  // function withdraw() public  {
        
    // }
}