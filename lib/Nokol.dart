

class Car {
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven;

  // Static property to keep track of the number of cars created
  static int numberOfCars = 0;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++; // Increment the number of cars whenever a new car object is created
  }

  // Method to drive the car a certain number of miles
  void drive(double miles) {
    milesDriven += miles;
  }

  // Method to get the number of miles driven
  double getMilesDriven() {
    return milesDriven;
  }

  // Method to get the brand of the car
  String getBrand() {
    return brand;
  }

  // Method to get the model of the car
  String getModel() {
    return model;
  }

  // Method to get the year of the car
  int getYear() {
    return year;
  }

  // Method to get the age of the car
  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Create three Car objects
  Car car1 = Car('Toyota', 'Corolla', 2015, 50000);
  Car car2 = Car('Honda', 'Civic', 2018, 30000);
  Car car3 = Car('Ford', 'Mustang', 2020, 15000);

  // Drive each car a different number of miles
  car1.drive(150);
  car2.drive(100);
  car3.drive(200);

  // Print out the brand, model, year, and miles driven for each car
  print('Car 1: ${car1.getBrand()} ${car1.getModel()}, Year: ${car1.getYear()}, Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()} years');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()}, Year: ${car2.getYear()}, Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()} years');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()}, Year: ${car3.getYear()}, Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()} years');

  // Print out the total number of Car objects created
  print('Total number of cars created: ${Car.numberOfCars}');
}



// কোডের সারাংশ:
// Car ক্লাস:
//
// প্রোপার্টি: brand, model, year, milesDriven
// স্ট্যাটিক প্রোপার্টি: numberOfCars
// কন্সট্রাক্টর: নতুন Car অবজেক্ট তৈরির সময় numberOfCars বাড়ানো হয়
// মেথড: drive(), getMilesDriven(), getBrand(), getModel(), getYear(), getAge()
// main() ফাংশন:
//
// তিনটি Car অবজেক্ট তৈরি
// প্রতিটি Car কে ভিন্ন ভিন্ন মাইলস চালানো
// প্রতিটি Car এর ব্র্যান্ড, মডেল, বছর, চালানো মাইলস এবং বয়স প্রিন্ট করা
// মোট Car অবজেক্টের সংখ্যা প্রিন্ট করা
// এখন এই কোডটি রান করলে অ্যাসাইনমেন্টের সব নির্দেশনা পূরণ হবে।