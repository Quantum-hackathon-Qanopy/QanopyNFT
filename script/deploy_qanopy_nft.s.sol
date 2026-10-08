// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {QanopyNft} from "src/qanopy_nft.sol";

contract DeployQanopyNft is Script {
    function run(address owner) external returns (QanopyNft) {
        vm.startBroadcast();
        QanopyNft qanopyNft = new QanopyNft(owner);
        vm.stopBroadcast();
        return qanopyNft;
    }
}