pragma solidity ^0.4.24;
//pragma solidity >0.4.99 <0.6.0;
//pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
//import "openzeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol";


contract ExampleTokenCrowdsale is Crowdsale, MintedCrowdsale, CappedCrowdsale{
  //constructor() public {
  //}
	//minimum investor Contribution - 5 ether
	//minimum investor Contribution - 50 ether
	uint256 public investorMinCap = 5000000000000000000;
	uint256 public investorHardCap = 50000000000000000000;

	mapping(address => uint256) public contributions;

	constructor(uint256 _rate,
	  address _wallet,
	  ERC20 _token,
	  uint256 _cap)
	  //uint256 _openingTime,
	  //uint256 _closingTime)
	Crowdsale(_rate, _wallet, _token)
	CappedCrowdsale(_cap)
	//TimedCrowdsale(_openingTime, _closingTime)
	public{
	}

  function _preValidatePurchase(
    address _beneficiary,
    uint256 _weiAmount
  )
    internal
  {
    super._preValidatePurchase(_beneficiary, _weiAmount);
    uint256 _existingContribution = contributions[_beneficiary];
    uint256 _newContribution = _existingContribution.add(_weiAmount);
    require(_newContribution >= investorMinCap && _newContribution <= investorHardCap);
	contributions[_beneficiary] = _newContribution;
  }

//  function getTokensLeft() public returns (uint256){
  //return weiAmount - _newContribution;
  //}
}
