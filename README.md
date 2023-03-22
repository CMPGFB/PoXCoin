# PoXCoin

PoXCoin is a crypto-collateralized stablecoin project built on the Stacks blockchain. It leverages the Proof of Transfer (PoX) protocol, which enables users to lock up their Stacks (STX) tokens as collateral to mint stablecoins pegged to the value of the US dollar.

This repository contains a collection of Clarity smart contracts that form the basis of the PoXCoin system. These contracts manage user positions, collateral deposits, stablecoin minting and burning, and liquidation of under-collateralized positions.

# Smart Contracts
stablecoin.clar: This contract defines the basic functionality of the stablecoin, such as minting, burning, and transferring tokens.

stablecoin-factory.clar: This contract manages user positions, collateral deposits, stablecoin minting and burning, and can be further expanded to handle liquidation of under-collateralized positions or adjusting the minimum collateral ratio.

pox.clar: This contract interacts with the PoX protocol to manage stacking and reward distribution. It includes functions to register a user, stack STX tokens, claim BTC rewards, and fetch user stacking information.

price-oracle.clar: This contract provides the STX price and can be updated by an authorized oracle.

# Deployment
To deploy the PoXCoin smart contracts on the Stacks blockchain, follow these steps:

1. Install the Stacks CLI.

2. Set up a Stacks testnet account and fund it with test STX tokens from the [Stacks test net faucet](https://www.stacks.co/faucet).

3. Compile each smart contract using the Stacks CLI:

('''stacks compile stablecoin.clar
stacks compile stablecoin-factory.clar
stacks compile pox.clar
stacks compile price-oracle.clar''')

4. Deploy the contracts to the Stacks testnet (replace <PRIVATE_KEY> with your private key):

('''stacks deploy stablecoin.clar --private-key <PRIVATE_KEY>
stacks deploy stablecoin-factory.clar --private-key <PRIVATE_KEY>
stacks deploy pox.clar --private-key <PRIVATE_KEY>
stacks deploy price-oracle.clar --private-key <PRIVATE_KEY>''')

5. Use the Stacks CLI or a Stacks testnet explorer to interact with the deployed contracts.

# Conclusion

Overall, the PoXCoin smart contract system enables users to mint stablecoins using Stacks tokens as collateral while leveraging the PoX protocol, providing a stable and secure financial instrument. However, it is crucial to note that the PoXCoin smart contracts have not been audited, and the legal and tax implications have not been thoroughly explored prior to the publishing of these open-source Clarity contracts. The potential tax implications of PoXCoin may result in varying degrees of fiscal responsibility in different jurisdictions around the world. Use at your own risk.

NoCodeClarity is a firm believer in the power of Bitcoin and Stacks which is why the PoXCoin system is open source.

# License
PoXCoin is licensed under the MIT License. See LICENSE for details.

Disclaimer
The PoXCoin smart contracts are provided as-is, without any warranties or guarantees of any kind. Before deploying any of these contracts to a production environment, it is crucial to thoroughly test and audit them. The author(s) of this repository are not responsible for any potential issues or losses that may arise from the use or deployment of these contracts. 
