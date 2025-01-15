// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "./SimpleStorage.sol"; // import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
  SimpleStorage[] public listOfsimpleStorageContracts;

  function createSimpleStorageContract() public  {
    SimpleStorage newSimpleStorageContract = new SimpleStorage();
    listOfsimpleStorageContracts.push(newSimpleStorageContract);
  }

  function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
    
   // SimpleStorage mySimpleStorage =listOfsimpleStorageContracts[_simpleStorageIndex];
    listOfsimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
  }

  function sfGet (uint256 _simpleStorageIndex) public view  returns (uint256 ) {
    //SimpleStorage mySimpleStorage = listOfsimpleStorageContracts[_simpleStorageIndex];
    return listOfsimpleStorageContracts[_simpleStorageIndex].retrive();
  }
}


