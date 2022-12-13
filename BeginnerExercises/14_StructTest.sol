contract StructTest {
    struct Cars {
        string make;
        uint price;
        string color;
    }

    Cars public myCars = Cars("Ford", 13000, "silver");
    Cars public myNewCar = Cars("BMW", 23000, "Navy");

    function updateStruct(uint _price) external {
        myNewCar.price = _price;
    }

    function getCars() external view returns (Cars memory) {
        return myNewCar;
    }
}
