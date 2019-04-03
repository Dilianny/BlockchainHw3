pragma solidity ^0.4.24;
//pragma solidity >0.4.99 <0.6.0;
//pragma solidity ^0.5.0;

//pragma solidity ^0.4.24;
import "openzeppelin-solidity/contracts/token/ERC20/DetailedERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
//import "openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";
//import "openzeppelin-solidity/contracts/math/SafeMath.sol";
//edited
//import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

//import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
//import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
//import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
//import "openzeppelin-solidity/contracts/math/SafeMath.sol";

/**
 * @title DetailedERC20 token
 * @dev The decimals are only for visualization purposes.
 * All the operations are done using the smallest and indivisible token unit,
 * just as on Ethereum all the operations are done in wei.
 */
contract ExampleToken is  StandardToken, DetailedERC20,  MintableToken{

  // using SafeMath for uint256;

  //We inherited the DetailedERC20
  constructor(string _name, string _symbol, uint8 _decimals)
  DetailedERC20(_name, _symbol, _decimals)
  public {
  	totalSupply_ = 10000;
  	balances[msg.sender] = 10000;
  }

// uint256 pointMultiplier = 1000000000000000000;

// struct Account {
//   uint balance;
//   uint lastDividendPoints;
// }

// mapping(address=>Account) accounts;

// uint256 totalSupply;
// uint256 totalDividendPoints;
// uint256 unclaimedDividends;

// function dividendsOwing(address account) internal returns(uint256) {
//   var newDividendPoints = sub(totalDividendPoints, accounts[account].lastDividendPoints);
//   return div(mul(accounts[account].balance , newDividendPoints), pointMultiplier);
// }
// modifier updateAccount(address account) {
//   var owing = dividendsOwing(account);
//   if(owing > 0) {
//     unclaimedDividends = sub(unclaimedDividends , owing);
//     accounts[account].balance = add(accounts[account].balance, owing);
//     accounts[account].lastDividendPoints = totalDividendPoints;
//   }
//   _;
// }


// function disburse(uint amount) {
//   totalDividendPoints =   add(totalDividendPoints ,(div(mul(amount , pointsMultiplier), totalSupply)));
//   totalSupply = add(totalSupply ,amount);
//   unclaimedDividends =  add(unclaimedDividends,amount);
// }

}
