# NFT Smart Contract Project - Pug NFT and Mood-Changing SVG NFT
![image](https://github.com/user-attachments/assets/3a36a6f5-21f0-42cf-99f8-cd70a91e47c2)
![image](https://github.com/user-attachments/assets/87f5f1c1-a6bf-4a2a-a75e-ac488f698bba)
![image](https://github.com/user-attachments/assets/24b5c71c-8978-4d95-8c71-4c6f11c1ab42)




## Overview
This repository contains two NFT smart contracts:
1. **IPFS-Hosted NFT**: A static NFT featuring a pug image, hosted on IPFS.
2. **SVG NFT (100% On-Chain)**: A dynamic SVG-based NFT that changes its mood (happy or sad) based on user interaction.

Both contracts are built with Solidity and utilize the ERC-721 standard.

---

## Features
### IPFS-Hosted NFT
- **Image**: A pug image hosted on IPFS.
- **Metadata**: Fully compliant with ERC-721 metadata standards.
- **Use Case**: Demonstrates how to store and retrieve NFT metadata from IPFS.

### SVG NFT (On-Chain)
- **Dynamic Content**: Changes mood from happy to sad and vice versa.
- **Fully On-Chain**: The SVG and metadata are stored entirely on the Ethereum blockchain.
- **Interactivity**: Moods are toggled using a function in the smart contract.

---

## Getting Started
### Prerequisites
Ensure you have the following tools installed:
- [Node.js](https://nodejs.org/)
- [Hardhat](https://hardhat.org/)
- [Solidity](https://soliditylang.org/)
- [IPFS CLI](https://docs.ipfs.io/install/)
- A wallet like [Metamask](https://metamask.io/)

---

## Deployment
### 1. Deploying the IPFS-Hosted NFT
1. Upload your image and metadata to IPFS. Use a tool like `ipfs add`:
   ```bash
   ipfs add pug.png
   ```
   Note the CID (Content Identifier) of the uploaded file.
2. Update the CID in the smart contract.
3. Deploy the contract using Hardhat:
   ```bash
   npx hardhat run scripts/deployIpfsNft.js --network <network_name>
   ```

### 2. Deploying the SVG NFT
1. Ensure the SVG string is embedded in the smart contract.
2. Deploy the contract:
   ```bash
   npx hardhat run scripts/deploySvgNft.js --network <network_name>
   ```

---

## Interacting with the Contracts
### Minting
Use the `mintNft()` function in both contracts to mint an NFT. Example:
```bash
cast send <contract_address> "mintNft()" --rpc-url <rpc_url> --private-key <private_key>
```

### Toggling Mood (For SVG NFT)
Call the `toggleMood()` function to switch between happy and sad states:
```bash
cast send <contract_address> "toggleMood()" --rpc-url <rpc_url> --private-key <private_key>
```

---

## Project Structure
```
.
├── contracts
│   ├── IpfsNft.sol        # IPFS NFT contract
│   ├── SvgMoodNft.sol     # SVG Mood NFT contract
├── scripts
│   ├── deployIpfsNft.js   # Deployment script for IPFS NFT
│   ├── deploySvgNft.js    # Deployment script for SVG NFT
├── test
│   ├── ipfsNft.test.js    # Test cases for IPFS NFT
│   ├── svgMoodNft.test.js # Test cases for SVG NFT
├── README.md              # Project documentation
```

---

## Examples
### IPFS Metadata Example
```json
{
  "name": "Pug NFT",
  "description": "A cute pug NFT hosted on IPFS.",
  "image": "ipfs://<CID>"
}
```

### SVG Mood NFT (On-Chain) Example
**Happy State**:
```html
<svg xmlns="http://www.w3.org/2000/svg" ...>Happy Mood</svg>
```

**Sad State**:
```html
<svg xmlns="http://www.w3.org/2000/svg" ...>Sad Mood</svg>
```

---

## Tools and Resources
- [OpenZeppelin Contracts](https://openzeppelin.com/contracts/)
- [Hardhat Documentation](https://hardhat.org/docs)
- [IPFS](https://ipfs.io/)

---

## Contributing
1. Fork the repository.
2. Create a new branch.
3. Submit a pull request with your changes.

---

## License
This project is licensed under the MIT License. See `LICENSE` for details.

