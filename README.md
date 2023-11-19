# Ethernaut Foundry Template
Template repository for trying [Ethernaut](https://ethernaut.openzeppelin.com/) locally using [Foundry](https://github.com/foundry-rs/foundry/).

## TODO
- [x] Local testing
- [x] Scripting

## Getting Started
Look for the "Use this template" green button, select "Create a new repository", then name the repo.

Clone your new repo to your local machine and install all dependencies:

```sh
forge install
```

## Running Tests
Challenge test files are located inside `test/` directory.

All you need is open the specific test file for the challenge you doing and look for this comment:

```solidity
// insert your code here!
```

When you find it, just insert your solution code below it (or replace it) and run the challenge specific test.

### Test Example
If I want to do the **Fallback** challenge, I open the `Fallback.t.sol` file, insert my code as described above and run the `testSolveFallback` test:

```sh
forge test -vvvv --match-test testSolveFallback
```

## Running Scripts
Challenge script files are located inside `script/` directory.

All you need is open the specific script file for the challenge you doing, uncomment the instance line and replace `address here` with the **instance address**. You can get the **instance address** in the console when in any Ethernaut challenge page.

Then look for the following comment inside the `run` function block:

```solidity
// insert your solution here
```

And insert your solution code below it (or replace it) and run the challenge specific script.

### Script Example
If I want to execute the **Fallback** challenge script, I must open the `Fallback.s.sol` file, uncomment and change the instance line...

Template file:

```solidity
contract FallbackScript is Script {
    Fallback public instance /* = Fallback(payable(address here)) */;

    ...
}
```

After changing the instance line:

```solidity
contract FallbackScript is Script {
    Fallback public instance Fallback(payable(0x4121aDb0C91Ff064ebae25Ba0BC7dF99c8B56047));

    ...
}
```

Insert your solution code inside `run` function, below the comment or below the `vm.startBroadcast()` line.

Then, run the script:

```sh
forge script script/Fallback.s.sol:FallbackScript --private-key $PRIVATE_KEY --broadcast --rpc-url $RPC_URL
```

You must set `$PRIVATE_KEY` and `$RPC_URL` envvars before executing the command above.

# Troubleshooting
If you are facing any problems with this template, just open an issue.

Contributions are welcome!