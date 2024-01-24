// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "forge-std/Script.sol";
import {Token} from "../src/Token.sol";

contract DeployToken is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Token token = new Token("AAYUSH", "AG", 10 ** 18);

        console.log("Token contract deployed with address: ", address(token));

        vm.stopBroadcast();
    }
}
