NotASecurityCoin (NAS) Whitepaper

Abstract

NotASecurity (NAS) is a novel ERC-20 token on the Ethereum blockchain designed to decrease in value over time by increasing the supply at a fixed interval. This paper outlines the specifications of NAS and its smart contract.

Introduction

NAS is an innovative experiment in tokenomics, aiming to explore new dynamics in the crypto economy. Unlike most tokens that aim for price appreciation, NAS is designed to decrease in value over time by continuously increasing the supply. With absolutely no expectation of profit, this fails the howy test and therefore is NOT a security per the SEC guidelines.

Tokenomics

The tokenomics of NAS is designed to ensure that the token's value decreases over time. This is achieved by increasing the supply of NAS at fixed intervals. The initial supply and the daily supply increase are defined at the creation of the contract.

Smart Contract

NAS's smart contract is written in Solidity and is based on the ERC20 standard. The contract includes a mechanism to increase the supply of NAS at a fixed interval.

Key Functions
updateSupply(): This function increases the token supply at a fixed interval.
burn(uint256 amount): This function allows a token holder to burn a specified amount of their NAS tokens.
Parameters
interval: The amount of time that must pass before the supply can be increased.
lastMinted: The timestamp of the last time the supply was increased.
dailySupplyIncrease: The amount of NAS that is added to the supply each time updateSupply() is called.
Security

The smart contract for NAS has been thoroughly tested to ensure its security and functionality. We recommend that users interact with the contract through a trusted wallet to ensure the security of their tokens.

Conclusion

NAS represents a unique experiment in the world of cryptocurrencies. By intentionally decreasing the value of the token over time, NAS aims to explore new possibilities in tokenomics and challenge traditional notions of what a cryptocurrency can be.
