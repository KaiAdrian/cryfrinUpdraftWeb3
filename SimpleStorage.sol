// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18; //solidity version

contract SimpleStorage {

    uint256  myFavNumber;// 0 by defu..

  //  uint256[]seznamFavNumber;
  struct Person{
    uint256 favNumber;
    string ime;
  }

    Person[] public  seznamPerson;
    mapping (string=>uint256)public imeTofavNumber ;

    // Person public Jozi =Person({favNumber: 34, ime: unicode"Joži"}); //unicode zarad šumnikov

    function store(uint256 _favNumber)public{
       myFavNumber =_favNumber;
    }
    function retrive() public view returns(uint256)  {
        return myFavNumber;
    }
    function addPerson(string memory _name,uint256 _favNumber) public {
       seznamPerson.push(Person(_favNumber,_name));
       imeTofavNumber[_name] =_favNumber;
    }
}


