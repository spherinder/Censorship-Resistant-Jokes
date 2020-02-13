var Contract = artifacts.require("./Contract.sol");

module.exports = function(deployer) {
  deployer.deploy(Contract, ['Star Wars', 'Avatar', 'Inception'].map(web3.utils.asciiToHex), {gas: 6700000});
};
