async function main() {

    /***********************************************************************
     ************************ DEPLOY PUNK-TOKEN ****************************
     ***********************************************************************/
    const PunkToken = await ethers.getContractFactory("PunkToken");
    const deployedContract = await PunkToken.deploy();

    console.log(`Contract has been deployed & contract address = ${deployedContract.address}`);

    /***********************************************************************
     ************************ DEPLOY PUNK-NFT ******************************
     ***********************************************************************/
    const PunkNft = await ethers.getContractFactory("PunkNft");
    const deployedContract = await PunkNft.deploy();

    console.log(`Contract has been deployed & contract address = ${deployedContract.address}`);
}

main()
    .then(() => process.exit(0))
    .catch((err) => {
        console.error(err);
        process.exit(1)
    });