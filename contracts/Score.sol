// SPDC-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Score {
    
    uint score = 5;
    address owner;
    
    event Score_set(uint indexed);
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        if(msg.sender == owner) {
            _;
        }
    }
    
    function getScore() public view returns (uint) {
        return score;
    }
    
    function setScore(uint new_score) public onlyOwner {
        score = new_score;
        emit Score_set(new_score);
    } 
    
}