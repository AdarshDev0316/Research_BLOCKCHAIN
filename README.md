# Blockchain Land Registry

A secure and transparent land registry system built on the blockchain. This project aims to digitize and store land ownership records utilizing smart contracts, cryptographic hashing, and QR codes to easily access and verify real estate assets.

## 🌟 Overview

The traditional process of land registration can be tedious, paper-heavy, and susceptible to fraud. This project solves these issues by moving land record verification to the blockchain. Each piece of land is assigned a unique ID, its ownership details are hashed for security, and then stored immutably on a smart contract. 

## 🏗️ Structure & Features

The repository includes the following key components:

- `land rgistry.sol/`: Contains the Solidity smart contract (`LandRegistry.sol`) responsible for blockchain logic, and its corresponding deployment script (`Deploy.s.sol`).
  - **`storeLand`**: Maps a land ID to its secure data hash and records the time.
  - **`getLandHash`**: Retrieves the stored hash for a specific land ID.
  - **`verifyLand`**: Verifies if a given hash matches the historically stored hash on the blockchain for a given land ID, allowing for instant and trustless authentication.
- `QR/`: A directory containing QR codes generated for each recorded piece of land. These QR codes make it incredibly simple to quickly scan and verify records without manual data entry.
- `output_with_hash.csv`: A comprehensive data file mapping the properties/land IDs to their secure cryptographic hashes.

## 🛠️ Technology Stack

- **Smart Contracts**: Solidity ^0.8.0
- **Framework**: Foundry (assumed from `.s.sol` script convention)
- **Data & Integrations**: QR validation, CSV mapping

## 🚀 Future Scope

- Developing a modern and responsive Frontend application to interact smoothly with the underlying smart contract.
- Implementation of land transfers (buying/selling features).
- Wallet integration for end-user interaction (MetaMask, etc).

## 📄 License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
