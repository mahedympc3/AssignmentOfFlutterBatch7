// Answer Of Assignment of Module 5

class Car {
  String brand;
  String modle;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.modle, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getMdel() {
    return modle;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime
        .now()
        .year;
    return currentYear - year;
  }
}

void main() {
  Car car1 = Car('Toyota', 'Corolla', 2015 , 50000);
  Car car2 = Car('Honda', 'Civic', 2018 , 30000);
  Car car3 = Car('Ford', 'Mustang', 2020 , 15000);


  car1.drive(150);
  car2.drive(100);
  car3.drive(200);


  print('Car 1: ${car1.getBrand()} ${car1.getMdel()}, Year: ${car1.getYear()},Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()} years');
  print('Car 2: ${car2.getBrand()} ${car2.getMdel()}, Year: ${car2.getYear()},Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()} years');
  print('Car 3: ${car3.getBrand()} ${car3.getMdel()}, Year: ${car3.getYear()},Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()} years');


  print('Total number of cars created : ${Car.numberOfCars}');

}
