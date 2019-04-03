var Migrations = artifacts.require("./Migrations");
//var ExampleTokenCrowdsale = artifacts.require("./ExampleTokenCrowdsale");


module.exports = function(deployer) {
  deployer.deploy(Migrations);
  //deployer.deploy(ExampleTokenCrowdsale);
};
