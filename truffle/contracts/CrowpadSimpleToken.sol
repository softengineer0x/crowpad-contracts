// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";

contract CrowpadSimpleToken is ERC20PresetMinterPauser {

    uint8 private _decimals;

    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        uint256 supply_,
        address initialSuppliedAcount_
    )
        ERC20PresetMinterPauser(name_, symbol_) payable
    {
        _decimals = decimals_;
        uint256 supply = supply_ * 10 ** _decimals;

        _mint(initialSuppliedAcount_, supply);
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }
}
