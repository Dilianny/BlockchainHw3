# Dilianny Lakitaya
# Instructions
	Make sure you have truffle version v0.2.24, openzeppelin 1.10.0, solidity v0.4.24 and Web3 0.20.7 
 	1.Download zip file to your desktop folder and unzip it.
	2.Then open command prompt for Window users
	3.Execute command "cd Desktop"
 	4.Execute command cd [ Name of Folder]
 	5.Then execute the following commands inorder 
         a) truffle compile 
         b) truffle develop 
         c) migrate --reset 
         d) ExampleToken.deployed("[token name]", "symbol", [decimal point]).then((t) => {token = t;}) 
         For example: ExampleToken.deployed("CSC4980 Token", "GSU", 18).then((t) => {token = t;}) 
         e) ExampleTokenCrowdsale.deployed([rate], [wallet], [ERC20 token] , new web3.BigNumber(web3.toWei([cap], 'ether'))).then((t) => {sale = t;}) 
         For Example: ExampleTokenCrowdsale.deployed(450, web3.eth.accounts[0], token.address , new web3.BigNumber(web3.toWei(150, 'ether'))).then((t) => {sale = t;}) 
         f)token.transferOwnership(sale.address) 
          
	6.Once commands are executed successfully you perform transactions as follows: 
 	 sale.buyTokens(web3.eth.accounts[1], {value : new web3.BigNumber(web3.toWei([amount of ether], 'ether')) , from : web3.eth.accounts[1]});
 	 For example: sale.buyTokens(web3.eth.accounts[1], {value : new web3.BigNumber(web3.toWei(2, 'ether')) , from : web3.eth.accounts[1]});
	  To buy tokens with 2 ethers.
  
# Implementations
	1) Change the minimum contribution to 5 Ether. (20 points)
![image](https://github.com/Dilianny/BlockchainHw3/blob/master/BChw3%20images/Changes%201.PNG)
	2) Add method, getTokensLeft, to report how many tokens are left. (30 points)
	3) Graduate Students question: Add the needed functionality to not allow more than 1 purchase per account. (40 points)

# Transactions performed
 	 Now perform the following transactions:
 	1) Try to buy tokens with 2.5 ether (10 points)
	 sale.buyTokens(web3.eth.accounts[1], {value : new web3.BigNumber(web3.toWei(2.5, 'ether')) , from : web3.eth.accounts[1]});
  	Transaction fails when you try to buy tokens with 2.5 ether
	
  	2) Buy tokens with 15 ether (10 points)
	 sale.buyTokens(web3.eth.accounts[1], {value : new web3.BigNumber(web3.toWei(15, 'ether')) , from : web3.eth.accounts[1]});
	Transaction is successful when buying tokens with 15 ether
	
  	3) Return how many tokens are left (10 points)
  	Graduate Students 4): Buy tokens (again) with 25 Ether (10 points)

