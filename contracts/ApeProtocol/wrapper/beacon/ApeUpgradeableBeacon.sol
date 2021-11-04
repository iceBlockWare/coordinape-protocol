pragma solidity ^0.8.2;

import "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import "../../TimeLock.sol";

contract ApeUgradeableBeacon is UpgradeableBeacon, TimeLock {

	constructor(address _apeVault, uint256 _minDelay) UpgradeableBeacon(_apeVault) TimeLock(_minDelay) {}

	function upgradeTo(address newImplementation) public override itself {
		super.upgradeTo(newImplementation);
	}
}

