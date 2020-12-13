pragma solidity 0.5.16;

 contract Contest {

 	struct Contestant{

 		uint id;
 		string name;
 		uint voteCount;

 		// contestants[0]=1,tom,2

 	}

 	mapping(uint => Contestant) public contestants;

 	uint public contestantsCount;

 	constructor() public {
 		addContestant("Tom");
 		addContestant("Jerry");
 	}

 	function addContestant (string _name) private {
 		contestantsCount++;
 		contestants[contestantsCount] = Contestant(contestantsCount,_name,0);
 	}

 }