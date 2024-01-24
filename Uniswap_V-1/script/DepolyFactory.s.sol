// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "forge-std/Script.sol";
import {Factory} from "../src/Factory.sol";

contract DeployToken is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Factory factory = new Factory();

        console.log(
            "Factory contract deployed with address: ",
            address(factory)
        );

        vm.stopBroadcast();
    }
}
