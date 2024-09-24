// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {PrivateERC721, PrivateERC721URIStorage} from "coti-contracts/contracts/token/PrivateERC721/extensions/PrivateERC721URIStorage.sol";
import "coti-contracts/contracts/utils/mpc/MpcCore.sol";

contract PrivateNFT is PrivateERC721URIStorage {
    uint256 private _totalSupply;

    constructor() PrivateERC721("Example", "EXL") {}

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function mint(
        address to,
        ctUint64[] calldata _itTokenURI,
        bytes[] calldata _itSignature
    ) public {
        uint256 tokenId = _totalSupply;
        
        _mint(to, tokenId);

        PrivateERC721URIStorage._setTokenURI(msg.sender, tokenId, _itTokenURI, _itSignature);

        _totalSupply += 1;
    }
}