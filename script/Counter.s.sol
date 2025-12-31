// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";
import {console} from "forge-std/console.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {
        // 开始广播交易
        vm.startBroadcast();
        // 部署合约
        counter = new Counter();
        // 结束广播交易
        vm.stopBroadcast();
        // 输出部署地址
        console.log("Counter deployed at:", address(counter));
    }
}
