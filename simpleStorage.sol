// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18; //solidity version

contract simplStorage {
    uint256  favNumber;// 0 by defu..

    uint256[]seznamFavNumber;

    function store(uint256 _favNumber)public{
        favNumber =_favNumber;
    }
    function retrive() public view returns(uint256)  {
        return favNumber;
    }
}
