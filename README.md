SEPOLIA BASE CONTRACT = 0x386f0C26891AdAb4041AB547Dd59D5C8d7B2A492


NFT pictures:

- **Worst**   ipfs://bafkreigjqxkph5qrbysc7fs42boplu6d5qrq6tmqzieznuojnt475y4tcq 

- **Bad**     ipfs://bafkreighulbrlr45rxesw7fcui2yojp5f2vholhopatobl24o7ais5snoq 

- **Neutral** ipfs://bafkreib7zvsz2y7yyu6frjcqr3sruti42pard65hzjci645lhwsjlec7y4

- **Good**    ipfs://bafkreiaou2gn3gy2k7m67wjx5gnobonpbpsyqem4hkvvoqvwehfc6i562m

- **Best**    ipfs://bafybeif4n7vnvr6kw5a7bsk3mqzb67oq4bo2xbjr463e44awj5zejruybq


{
  "name": "A3A Merchant",
  "description": "This NFT verifies access to the A3A merchant interface.",
  "image": "ipfs://bafybeigwdzye4fokwuu35bl4qn6fzfdukd2pltz74dw7t3c7j6umdbgsb4", 
  "attributes": [
    {
      "trait_type": "Role",
      "value": "Merchant"
    },
    {
      "trait_type": "Access Level",
      "value": "Verified"
    }
  ]
}

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
