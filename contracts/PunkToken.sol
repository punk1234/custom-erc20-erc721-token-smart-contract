// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PunkToken is ERC20 {

    constructor() ERC20("Punk Token", "PKT") {
        _mint(msg.sender, 10 ** (6 + decimals()));
    }

    /**
     * @dev This function swaps ETH for PKT ERC20 token
     */
    function buyToken(address receiver) public payable RequireEtherAmount {
        uint value = msg.value / 1000;
        _mint(receiver, value);
    }

    modifier RequireEtherAmount {
        require(msg.value > 0, "Actual ether amount is required!!!");
        _;
    }

}