// get funds 
// widr...
// set min amount req

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe {
  uint256 public minUsd = 5;

    function fund() public payable  {
        minUsd = minUsd + 1;
        require(msg.value >= 1e18,"Amount sent is to low!"); //1 ETH
    }
    function withdraw() public  {
        
    }


}