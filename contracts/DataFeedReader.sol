// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@api3/contracts/api3-server-v1/proxies/interfaces/IProxy.sol";

contract DataFeedReaderExample {
    // Define an event to emit data feed readings
    event DataFeedRead(address indexed proxy, int224 value, uint32 timestamp);

    // Use your proxy address as the argument
    function readDataFeed(address proxy)
        public
        returns (int224 value, uint32 timestamp)
    {
        (value, timestamp) = IProxy(proxy).read();

        // Emit the event after reading the data
        emit DataFeedRead(proxy, value, timestamp);
    }
}
