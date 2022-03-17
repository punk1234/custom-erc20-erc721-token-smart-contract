// SPDX-License-Identifier: MIT

pragma solidity >=0.8.1;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract PunkNft is ERC721 {

    uint256 lastUsedTokenId;

    struct Metadata {
        string name;
        string description;
        string image;
    }

    mapping(uint256 => Metadata) tokenMetadata;

    constructor() ERC721("Punk Token", "PKT") { }

    function mint(
        address receiver,
        string memory tokenURI,
        string memory name,
        string memory description
    ) public returns (uint256) {
        uint256 newTokenId = lastUsedTokenId + 1;
        lastUsedTokenId = newTokenId;

        _mint(receiver, newTokenId);
        
        tokenMetadata[newTokenId] = Metadata(name, description, tokenURI);

        return newTokenId;
    }

}