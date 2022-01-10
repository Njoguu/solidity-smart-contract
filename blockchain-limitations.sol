pragma solidity 0.8.10;

contract MyContract{
	
	//	1. ARRAYS
	// creating an array
	uint[] public arr;

	// function to modify the array
	function modifyArray(uint value) public{
		arr.push(value);
	}

	// function to get the length of the array
	function getLength() external view returns (uint){
		arr.length;
	}
}