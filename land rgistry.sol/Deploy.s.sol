// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/LandRegistry.sol";

contract Deploy is Script {
    function run() external {
        uint256 key = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(key);

      
      LandRegistry registry = LandRegistry(0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512);


       
        registry.storeLand(1, "cb7780...");
        registry.storeLand(2, "2dbf12...");
        registry.storeLand(3, "df9a73...");
        // paste all...

        vm.stopBroadcast();
    }
}
