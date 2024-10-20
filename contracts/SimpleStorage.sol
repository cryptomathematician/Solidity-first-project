// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.8 ; // solidity version

contract SimpleStorage {
    // boolean, unint, int, adress, bytes
    uint256 public favoriteNumber; // gets initialized to zero

    mapping( string => uint256) public nameToFavoriteNumber;
    
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
        nameToFavoriteNumber[_name] = _favoriteNumber;
   }
    
}


// 0x48B94361FD30900Bd91a6C96013c9a8d07c670cd

// EVM can access and store information in 6 places: 1.stack 2.storage 3.Calldata 4.code 5.memory 6.logs

