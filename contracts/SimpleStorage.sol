// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.8 ; // solidity version

contract SimpleStorage {
    // boolean, unint, int, adress, bytes
    uint256 public favoriteNumber; // gets initialized to zero
    People public person = People({favoriteNumber:2, name: "Patrick"});

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        favoriteNumber = favoriteNumber;
    }

   function retrieve()  public view returns (uint256)   {
    return favoriteNumber;
   }
    
}

// 0x48B94361FD30900Bd91a6C96013c9a8d07c670cd