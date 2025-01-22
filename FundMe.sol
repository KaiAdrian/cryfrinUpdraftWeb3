// get funds 
// widr...
// set min amount req

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import  {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
  uint256 public minUsd = 5;

    function fund() public payable  {
        minUsd = minUsd + 1;
        require(msg.value >= minUsd,"Amount sent is to low!"); //1 ETH
    }
    function withdraw() public  {
        
    }
function getPrice() public  {
    //adress:0x694AA1769357215DE4FAC081bf1f309aDC325306
}
function getConversionRate() public  {}

}