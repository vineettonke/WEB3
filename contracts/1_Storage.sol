//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // stating version

contract SimpleStorage {
    // Basic Data-Types: boolean, uint, int, address, bytes
    bool hasFavoriteNumber = false;
    uint256 myFavoriteNumber;     // Defaults to '0'
    string favoriteNumberInText = "eighty-eight";
    int256 favoriteInt = -88;
    address myAddress = 0x010a1d148c7E766dB9b08976f3dD371d182735eE;
    bytes32 favoriteBytes32 = "cat";


    //FUNCTIONS:

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
        retrieve();
    }

    //view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function something() public pure returns(uint256){
        return 7;
    }


    //STRUCT:

    struct Person {
        uint favoriteNumber;
        string name;
    }

    // Person public pat = Person(7, "Pat"); // to be more explicit we can write it as:- Person({favoriteNumber: 7, name: "Pat"})
    // Person public mary = Person(17, "Mary");
    // Person public jon = Person(54, "Jon");


    //ARRAYS:

    //Static Array
    // Person[3] public listOfPeople;

    //Dynamic Array
    Person[] public listOfPeople;


    //MAPPING:
    
    mapping(string => uint256) public nameToFavoriteNumber; // jon -> 12
    mapping(uint256 => string) public favoriteNumberToName; //12 -> jon

    // calldata, memory, storage
    function addPerson(string memory _name, uint _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
        favoriteNumberToName[_favoriteNumber] = _name;
    }

    
}