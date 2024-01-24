// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "forge-std/Script.sol";
import {Exchange} from "../src/Exchange.sol";

contract DeployToken is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        address tokenAddress;
        // address tokenAddress = 0xtokenaddress;

        Exchange exchange = new Exchange(tokenAddress);

        console.log(
            "Exchange contract deployed with address: ",
            address(exchange)
        );

        vm.stopBroadcast();
    }
}
