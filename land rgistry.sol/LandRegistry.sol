// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LandRegistry {

    struct Land {
        uint landID;
        string hash;
        uint timestamp;
    }

    mapping(uint => Land) public lands;

    function storeLand(uint _landID, string memory _hash) public {
        lands[_landID] = Land(_landID, _hash, block.timestamp);
    }

    function getLandHash(uint _landID) public view returns(string memory) {
        return lands[_landID].hash;
    }

    function verifyLand(uint _landID, string memory _hash) public view returns(bool){
        return keccak256(bytes(lands[_landID].hash)) == keccak256(bytes(_hash));
    }
}
 
