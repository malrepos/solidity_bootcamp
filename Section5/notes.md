# Section 5

### Mappings

- mapping a key type to a value type

```
mapping(uint => bool) public myMapping;
```

- in Remix, a mapping set to public will give us a getter function. This will take as a parameter the mapping key and return the value.
- for a mapping, all possible key values are set to the default value of the value type.
- Fotr example:

```
mapping(uint => bool)
```

    - all possible uint256 keys are set to the default bool value, which is false

### Mappings of Mappings

```
mapping(uint => mapping(uint => bool))
```

- we might see 2 mappings for balances in token contracts
- or in voting for governance contracts

### Withdraw Function Pattern

CHECKS => EFFECTS => INTERACTION

1. Check if the user has enough balance
2. Apply the effect
3. Make the interaction to an external address

### Sub Contracts

- A contract that can create another contract

```
contract first{
    // two is the name of the second contract
    two public someAction;

    function doSomething() public payable{
        someAction = new two(var1, var2);
    }

    contract two{
        variables...
        constructor(_var1, _var2){
            var1 = _var1;
            var2 = _var2;
        }
    }
}
```

- So the first contract references the second and has a function that will create a **new** instance of the second contract
- the functions parameters will fill the second functions constructor parameters

# The sections that follow in the course were extremely hard to understand. It required that I do my own research in order to understand and apply the concepts.

- structs
- error handling
- sending ether : transfer() , send(), call()

### Structs

- a struct is a logical grouping of variables
- they allow us to group data together

```
struct Car{
    string model;
    uint year;
    address owner;
}
```

- we can use a struct as a state variable

```
Car public car;
```

    - where Car is the struct name, and car is the name of the instance we are creating

- we can also create an array of structs:

```
Car[] public cars;
```

- we can define a mapping from owner to cars:

```
mapping(address => Car[]) public carByOwner;
```

- there are 3 ways to initialize a struct:

1.

```
function examples() external {
    Car memory toyota = Car("toyotal", 1990, msg.sender);
}
```

2. the same but with key value pairs as in any function parameter

   model="ford"...

3. holding the default values, and then fill

```
Car memory tesla;

tesla.model = "tesla";
tesla.year = 2020;
tesla.owner = msg.sender;
```

- we can push these structs to our earlier struct array (Car[] public cars)

```
cars.push(toyota);
cars.push(ford);
cars.push(tesla);
```

- we can create a struct and push it to an array in one go:

```
cars.push(Cars("mazda", 2020, msg.sender));
```

- to get the first car stored in the cars array and read only

```
Car memory _car = cars[0];
_car.model;
_car.year;
_car.owner;
```

- to modify the array we use storage

```
Car storage _car = car[0];
_car.year = 2017;
```

- we can also reset the field in a struct

```
Car storage _car = car[0];
delete _car.owner;

// or all fields

delete cars[1];
```
