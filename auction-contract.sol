pragma  solidity 0.8.10;    //specifies the compiler version


contract Auction {
    event Start();
    event End(address highestBidder, uint highestBid);
    event Bid(address indexed sender, uint amount);
    event Withdraw(address indexed bidder, uint amount);

     address payable public seller;

    bool public started;
    bool public ended;
    uint public endAT;

    uint public highestBid;
    address public highestBidder;
    mapping(address=> uint) public bids;

    constructor() {
        seller = payable(msg.sender);
    }

    function start(uint startingBid) external {
        require(!started, "Auction already started!");
        require(msg.sender == seller, "You didn't start the auction");
        started = true;
        endAT = block.timestamp + 2 days;
        highestBid = startingBid;
        emit Start();

    }

    function bid() external payable{
        require(started, "Not Started!");
        require(block.timestamp < endAT, "ended!");
        require(msg.value > highestBid);

        if (highestBidder != address(0)) {
            bids[highestBidder] += highestBid;
        }

        highestBid = msg.value;
        highestBidder = msg.sender;

        emit Bid(highestBidder, highestBid);    }

    function withdraw() external payable{
        uint balance = bids[msg.sender];
        bids[msg.sender] = 0;
        (bool sent, bytes memory data) = payable(msg.sender).call{value: balance}("");
        require(sent, "Could not withdraw!");

        emit Withdraw(msg.sender, balance);

    }

    function end() external{
        require(started, "You need to start the event first!");
        require(block.timestamp >= endAT, "Auction is still ongoing!");
        require(!ended, "Auction already ended!");

        ended = true;
        emit End(highestBidder, highestBid);
    }

     
    
    

}