pragma solidity ^0.5.0;

contract frontRunner {
    event success();
    event fail();

    bytes32 public secrethash;

    constructor (bytes32 _secrethash) public payable {
        secrethash = _secrethash;
 }
     function take(string calldata _secret) external {

         if(keccak256(abi.encodePacked(_secret)) == secrethash) {
             uint256 _mybalance = address(this).balance;
             address payable a = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
             a.transfer(_mybalance);
             emit success();
             } else {emit fail();}
         }
     }
