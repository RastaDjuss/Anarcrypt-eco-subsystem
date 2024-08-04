//This is the Contract model i first Deployed to Sepolia works withn Solidity scrypts Next is to deploy to zkSync keep you updated...

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
  
   uint256 public favoriteNumber = 666; //default 0 //this is a storage variable

   struct Person {
    uint256 my_favorite_number;
    string name;
}

Person[] public list_of_people; // this is a dynamic array
// Person[3] public another_list_of_three_people; // this is a static array

mapping (string => uint256) public nameToFavoriteNumber;
   
     function store(uint256 _favoriteNumber) public {
        // the variable favorite number is updated with the value that is contained into the parameter `_favoriteNumber`
        favoriteNumber = _favoriteNumber;
        // 0xd9145CCE52D386f254917e481eB44e9943F39138
    }

    function retrieve() public view returns(uint256){
    return favoriteNumber;
}

function add_person(string memory _name, uint256 _favorite_number) public {
    list_of_people.push(Person(_favorite_number, _name));
    nameToFavoriteNumber[_name] = _favorite_number;
}


}
