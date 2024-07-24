async function main() {
  // Correcting the contract name to match the Solidity contract
  const DataFeedReaderExample = await ethers.getContractFactory(
    "DataFeedReaderExample"
  );
  const data_feed_reader_example = await DataFeedReaderExample.deploy();
  console.log(
    "Contract Deployed to Address:",
    data_feed_reader_example.address
  );
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
