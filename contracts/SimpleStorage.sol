// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.8 ; // solidity version

contract SimpleStorage {
    // boolean, unint, int, adress, bytes
    uint256 public favoriteNumber; // gets initialized to zero
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people; 

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

   function retrieve()  public view returns (uint256)   {
    return favoriteNumber;
   }

   function addPerson(string memory _name, uint256 _favoriteNumber) public{
        People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
   }
    
}


// 0x48B94361FD30900Bd91a6C96013c9a8d07c670cd