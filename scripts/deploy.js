async function main() {
    const PunkToken = await ethers.getContractFactory("PunkToken");
    const deployedContract = await PunkToken.deploy();

    console.log(`Contract has been deployed & contract address = ${deployedContract.address}`);
}

main()
    .then(() => process.exit(0))
    .catch((err) => {
        console.error(err);
        process.exit(1)
    });