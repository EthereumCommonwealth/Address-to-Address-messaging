pragma solidity ^0.4.15;

contract ClassicEtherWallet_Messages {
    
    struct message
    {
        address from;
        string  text;
    }
    mapping (address => uint256) public last_msg_index;
    mapping (address => mapping (uint256 => message)) public messages;
    
    function sendMessage(address _to, string _text)
    {
        messages[_to][last_msg_index[_to]].from = msg.sender;
        messages[_to][last_msg_index[_to]].text = _text;
        last_msg_index[_to]++;
    }
    
    function lastIndex(address _owner) constant returns (uint256)
    {
        return last_msg_index[_owner];
    }
}
