# Section 6

### ABI Array

- in remix, on a compiled contract, click on "compilation details" in the compiler tab

### Events

- when we return something in a function, this is only seen by other contracts **return is only for inter contract communication**
- events are for communicating outside the blockchain
- an event is defined inside the contract

```
event MyEvent(type parameter, ..);
```

- now we can use this evnt inside functions when we want to emit specific values

```
function .....
    ....
    emit MyEvent(fill parameters);
```

- now when we deploy and make a transaction, we get "logs" which is an array of the emitted event
- the EVM has a logging functionality and it's not the same as storing storage variables

- Events as a Trigger

  - an offchain app connected to the blockchain listens for an event and updates it's app or notifies the user accordingly.

- Events as Dat Storage
  - store only a proof of the data(hash) on chain
  - store the data on IPFS

### Self Destruct

- data on the blockchain is stored forever, but we can modify the state
- we cannot erase data going back on the blockchain (in history)
  - we can erase data going forward

```
selfdestruct(payable(msg.sender));
```

- for the above selfdestruct function, any remaining ether in the contract will be sent to the caller
  - thus we need some access control
- the contract is still there and can be interacted with but no longer contains any code
- any eth sent to this destroyed contract will be lost

### ERC20

- the openzeppelin ERC20 only has an internal \_mint() function. This means if you don't add your own mint() function there will only be a fixed supply in deployment.
- most functions in the OpenZ are "virtual override"

  - so all those functions can be overriden by any contract that inherits from this

- the most basic ERC20 imports the OpenZ contract and in the constructor sets the name and the symbol

```
import "@openzeppelin...."

contract MyToken is ERC20{
    constructor() ERC20("MalToken", "MPM"){}
}
```

- we can have a premint using the internal \_mint() fucntion: this will be a fixed supply
- we can also make a mint function to have a dynamic supply

### Access Control

- Ownable will import the Ownable.sol contract and onlyOwner can call the mint function

### Burning

- imports "ERC20Burnable.sol"
- it has 2 functions
  the burn() function is public and destroys tokens from the caller
  - burnFrom() burns from an allowance account
