# Section 3 Notes

### Bool

- default value is false
  - bool = 1; (true)
  - bool = 0; (true)
  - only setting a bool to false or empty makes it false

### Unisgned Integers

- full numbers, no decimal
- if we assign an initial value to a storage variable that is the default value, For example:

```
uint myUint = 0;
    bool myBool = false;

```

it will cost additional gas!

### SafeMath

- overflow and underflow is specific to solidity compilers before 0.8.0
- to get the old wrap around effect in >=0.8.0 compilers, we need to enclose the action in an unchecked block:

```
uint myUint
    function decrementUint() public {
        unchecked {
            myUint--;
        }
}
```

### Strings

- strings are byte arrays without length
- other than concatenate there are no string manipulation functions. This is because strings are expensive to store.
- we must set data location for a string parameter in a function:

```
function myString(string memory _changeString)...
```

### Bytes

- there is a difference between strings and bytes: bytes have a length
- it is more advisable to use bytes instead of strings

### Address

- address type by default is 0x0000000000000000000000000000000000000000
- an address value must be a valid address
- an address has a member property : baance

```
address myAddress = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

    function getBalnce() public view returns(uint){
        return myAdrress.balance;
    }

```

- every interaction on Ethereum is address based
- there are 2 types of address:
  - address
  - address payable

### msg

- a public object available throughout all contracts
- msg.sender contains the address of the wallet or contract interacting with the contract

## View vs Pure

- view functions can access variables outside the scope of the function
- pure functions only calls variables that are not storage variables

### Functions

- for setter functions, functions that write to the blockchain do not usually use returns()
  This is only for inter contract communication.
  To see the value returned by a function we use events instead.
