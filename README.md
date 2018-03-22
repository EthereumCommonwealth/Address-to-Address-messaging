# Global Ethereum messaging protocol.

### Contract address at ETC chain: [0x6A77417FFeef35ae6fe2E9d6562992bABA47a676](http://gastracker.io/addr/0x6A77417FFeef35ae6fe2E9d6562992bABA47a676)

This repository represents a reference implementation of a central messaging smart-contract that aims to provide a functionality to contact an owner of Ethereum hex-address directly.

This protocol can be used on cross-chain basis since any address can deliver a message for the owner of the address at the alternative chain.

Message system in use: https://github.com/ethereumproject/ECIPs/issues/85#issuecomment-375413336

# General info

Here is a reference implementation of the described Message System at CLassicEtherWallet.

https://ethereumproject.github.io/etherwallet/#messages

Interchain Address-To-Address messaging contract is currently deployed on Ethereum CLassic chain at [0x6A77417FFeef35ae6fe2E9d6562992bABA47a676](http://gastracker.io/addr/0x6a77417ffeef35ae6fe2e9d6562992baba47a676) address.

It is an open-source contract and it is licensed under GPLv3. Source codes could be found here: https://github.com/EthereumCommonwealth/Address-to-Address-messaging

# Functionality

The described messaging system allows:
- send messages
- retrieve messages
- display messages to a user when he/she unlocks a wallet to send a transaction

# Howto

### Sending a message.

1. Open ClassicEtherWallet and go to `messages` tab. Make sure that you are at ETC network. It is necessary to use ETC network in order to send a message https://ethereumproject.github.io/etherwallet/#messages

2. Unlock your wallet.

3. Click a New Message section.
![newmsg](https://user-images.githubusercontent.com/26142412/37787703-896270d0-2df7-11e8-86f9-f8f89ced0539.png)

4. Type the address and the message.
![newmsg2](https://user-images.githubusercontent.com/26142412/37787823-cbe35082-2df7-11e8-8850-f2e9fbe39f29.png)

5. Click `SEND` button and wait for transaction info to appear. NOTE: It may take longer to calculate the transaction info if your network speed is low.
![newmsg3](https://user-images.githubusercontent.com/26142412/37787974-295ec386-2df8-11e8-96b0-2dc7c5d777a6.png)

6. Check the transaction hash to make sure that your message was successfully sent.
![newmsg4](https://user-images.githubusercontent.com/26142412/37787994-37f90316-2df8-11e8-9250-69533995d890.png)

### Watching your messages.

1. Open ClassicEtherWallet and go to `messages` tab. It doesn't matter what network you are currently at to display your messages. You can retrieve ETC messages being on UBQ network. https://ethereumproject.github.io/etherwallet/#messages

2. Unlock your wallet. Wait for messages to load. It may take a minute or something like this because it requires a number of contract calls. NOTE: You can view messages with address only but you will not be able to respond if you are using this method of message checking.
![viewmessage1](https://user-images.githubusercontent.com/26142412/37788356-2162f944-2df9-11e8-8a03-ab1494bfe919.png)

3. You can also reply to a message if you want. However, it requires gas.
![viewmessage2](https://user-images.githubusercontent.com/26142412/37788480-76891bce-2df9-11e8-8f12-70a650aed1c8.png)

### NOTE: This is an emergency message system! Not an on-chain chatroom.

Every symbol that you broadcast to the network will cost you gas. This is not an on-chain chat! This is only an emergency system that allows you to contact an owner of a certain address if there is no way to contact him off-chain. For example if you accidentally sent a number of funds into someone elses address or if you want to interview TheDAO hacker.
