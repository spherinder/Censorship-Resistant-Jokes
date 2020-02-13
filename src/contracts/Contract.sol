pragma solidity ^0.5.16;

contract Contract {
  
  mapping (bytes32 => uint8) public ratingsReceived;
  
  bytes32[] public jokeList;

  constructor (bytes32[] memory jokes) public {
    jokeList = jokes;
  }

  // This function returns the total ratings so far
  function totalVotesFor(bytes32 joke) view public returns (uint8) {
    return ratingsReceived[joke];
  }

  // This function increments the vote count
  function voteForM(bytes32 joke) public {
    ratingsReceived[joke] += 1;
  }
}
