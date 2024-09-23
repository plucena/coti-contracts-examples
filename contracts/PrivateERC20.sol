// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {PrivateERC20} from "coti-contracts/contracts/token/PrivateERC20/PrivateERC20.sol";
import "coti-contracts/contracts/utils/mpc/MpcCore.sol";

contract PrivateERC20Example is PrivateERC20 {
    constructor(string memory name_, string memory symbol_, uint64 initialSupply) PrivateERC20(name_, symbol_) {
        _mint(msg.sender, MpcCore.setPublic64(initialSupply));
    }
}