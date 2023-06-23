// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../node_modules/@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract ElonMusk is ERC20, ERC20Burnable, Ownable {
    address public partyChainAddr;

    constructor() ERC20("ElonMusk", "ELON") {
        _mint(msg.sender, 100000000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function setContractaddress(address _contractaddress) public onlyOwner {
        partyChainAddr = _contractaddress;
    }

    function aprovePartyChain(uint _amount) public {
        approve(partyChainAddr, _amount);
    }
}
