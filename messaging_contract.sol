pragma solidity ^0.4.15;

contract DexNS {
    function addressOf(string _name) constant returns (address _addr);
}

contract ClassicEtherWallet_Messages {
    
    DexNS dexns = DexNS(0x28fc417c046d409c14456cec0fc6f9cde46cc9f3);
    
    struct message
    {
        address from;
        string  text;
    }
    
    struct public_key_struct
    {
        string key;
        string key_type;
    }
    
    mapping (address => uint256) public last_msg_index;
    mapping (address => mapping (uint256 => message)) public messages;
    mapping (address => public_key_struct) public keys;
    
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
    
    function getLastMessage(address _who) constant returns (address, string)
    {
        return (messages[_who][last_msg_index[_who]].from, messages[_who][last_msg_index[_who]].text);
    }
    
    function getIndexedMessage(address _who, uint256 _index) constant returns (address, string)
    {
        return (messages[_who][_index].from, messages[_who][_index].text);
    }
    
    function getPublicKey(address _who) constant returns (string _key, string _key_type)
    {
        return (keys[_who].key, keys[_who].key_type);
    }
    
    function setPublicKey(string _key, string _type)
    {
        keys[msg.sender].key = _key;
        keys[msg.sender].key_type = _type;
    }
    
    function getPublicKeyByName(string _name) constant returns (string _key, string _key_type)
    {
        return (keys[dexns.addressOf(_name)].key, keys[dexns.addressOf(_name)].key_type);
    }
    
    function sendMessageByName(string _name, string _text)
    {
        messages[dexns.addressOf(_name)][last_msg_index[dexns.addressOf(_name)]].from = msg.sender;
        messages[dexns.addressOf(_name)][last_msg_index[dexns.addressOf(_name)]].text = _text;
        last_msg_index[dexns.addressOf(_name)]++;
    }
    
    function getLastMessageByName(string _name) constant returns (address, string)
    {
        return (messages[dexns.addressOf(_name)][last_msg_index[dexns.addressOf(_name)]].from, messages[dexns.addressOf(_name)][last_msg_index[dexns.addressOf(_name)]].text);
    }
    
    function lastIndex(string _name) constant returns (uint256)
    {
        return last_msg_index[dexns.addressOf(_name)];
    }
    
    function getIndexedMessageByName(string _name, uint256 _index) constant returns (address, string)
    {
        return (messages[dexns.addressOf(_name)][_index].from, messages[dexns.addressOf(_name)][_index].text);
    }
}
