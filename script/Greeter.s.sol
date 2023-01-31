//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "forge-std/Script.sol";

import {Greeter} from "../src/Greeter.sol";

contract GreeterScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("ETHEREUM_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new Greeter(vm.envAddress("SEMAPHORE_ADDRESS"), vm.envUint("GROUP_ID"));

        vm.stopBroadcast();
    }
}
