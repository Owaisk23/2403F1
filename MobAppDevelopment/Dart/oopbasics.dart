
class Car{
  // properties
  String? CarBrand, CarName, CarModel, CarColor;

  // constructors
  // Car();
  Car(String CarBrand, String CarName, String CarModel, String CarColor){
    this.CarBrand = CarBrand;
    this.CarName = CarName;
    this.CarModel = CarModel;
    this.CarColor = CarColor; 
  }

  // Named Constructor
  Car.CarWithoutColor(String CarBrand, String CarName, String CarModel){
    this.CarBrand = CarBrand;
    this.CarName = CarName;
    this.CarModel = CarModel;
  }



  // methods
  void CarDetails(){
    print("Car Brand: $CarBrand");
    print("Car Name: $CarName");
    print("Car Model: $CarModel");
    print("Car Color: $CarColor");
  }

}

void main(){
  // ClassName ObjName = Constructor();
  // Car car1 = Car("Honda", "Accord", "CL9", "Black");
  Car car1 = Car.CarWithoutColor("Honda", "Accord", "CL9");
  // car1.CarBrand = "Honda";
  // car1.CarName = "Accord";
  // car1.CarModel = "CL7";
  // car1.CarColor = "Silver";
  car1.CarDetails();
}