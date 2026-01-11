// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract SimpleNFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("SimpleNFT", "SNFT") {}

    // Mint a new NFT
    function deposit(address to) public returns (uint256) {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(to, newItemId);
        return newItemId;
    }

    // Transfer an NFT
    function withdraw(address to, uint256 tokenId) public {
        require(ownerOf(tokenId) == msg.sender, "Not the owner");
        safeTransferFrom(msg.sender, to, tokenId);
    }
    
    // Get balance of an address
    function getBalance(address owner) public view returns (uint256) {
        return balanceOf(owner);
    }
}
