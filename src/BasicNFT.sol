//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {

    uint256 private s_tokenCounter;

    mapping(uint256 => string) private s_tokenIdTotokenUri;

    constructor() ERC721("Dogie", "DOG") {
        s_tokenCounter = 0;

    }

    function mintNft(string memory tokenUri) public {
        s_tokenIdTotokenUri[s_tokenCounter] = tokenUri;
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;      
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return s_tokenIdTotokenUri[tokenId];

    }

}