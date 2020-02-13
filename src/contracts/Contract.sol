pragma solidity ^0.5.16;

contract Contract {
  
  mapping (bytes32 => uint8) public ratingsReceived;
  
  bytes32[] public mList;

  /* This is the constructor which will be called once when you
  deploy the contract to the blockchain. When we deploy the contract,
  we will pass an array of ms for which users will give ratings
  */
  constructor (bytes32[] memory mNames) public {
    mList = mNames;
  }

  // This function returns the total ratings a m has received so far
  function totalVotesFor(bytes32 m) view public returns (uint8) {
    return ratingsReceived[m];
  }

  // This function increments the vote count for the specified m. Equivalent to upvoting
  function voteForM(bytes32 m) public {
    ratingsReceived[m] += 1;
  }
}
