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

	//	2. STRINGS
	// creating a string
	string public sayhello  = "hello world";

	// function to set string
	function setString(string memory value) public{
		sayhello = value;
	}

	//	3. LOOPS
	// starting a loop
	function loop(uint n) public pure{
		uint sum = 0;
		// for loop
		for (uint x; x < n; x++){
			sum += x;
		}

		// while loop
		uint x = 0;
		while (x < n) {
			sum += x;
			x++;

		}

	}

}