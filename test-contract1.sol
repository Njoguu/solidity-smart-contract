pragma  solidity 0.8.10;    //tells the compiler version

contract MyContract {

    // address public lastSender;

    // // send money to contract
    // function Receive() external payable{
    //     lastSender = msg.sender;
    //  }
    
    // // view balance of money in contract
    // function viewBalance() public view returns (uint){
    //     return address(this).balance;

    // }

    // // send money back to accounts from contract
    // function pay(address payable addr) public payable{

    //     (bool sent, bytes memory data) = addr.call{value: 1 ether}("");
    //     require(sent, "An error has occured!");

    // }
    // mapping(address => uint) private balances;

    // function deposit() external payable{
    //     balances[msg.sender] += msg.value;
    // }

    // function withdraw(address payable addr, uint amount) public payable{
    //     require(balances[addr] >= amount, "Insufficient funds!");
    //     (bool sent, bytes memory data) = addr.call{value: amount}("");
    //     require(sent, "Could not withdraw!");
    //     balances[msg.sender] -= amount;
    // }

    // function getBalance() public view returns (uint){
    //     return address(this).balance;
    
    // }


    

}