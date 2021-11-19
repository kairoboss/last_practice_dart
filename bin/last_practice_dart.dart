import 'dart:io';


void main(List<String> arguments) {
  Fabrics fabrics = Fabrics();
  fabrics.getData();
  fabrics.getInfo();
  Yarns yarns = Yarns();
  yarns.getData();
  yarns.getInfo();
}


class Shop {
  String? name;
  int? price;

  void getData(){
    print("Enter name of fabric:");
    this.name = stdin.readLineSync()??"";
    print("Enter price:");
    this.price = int.parse(stdin.readLineSync()??"0");
  }

  void getInfo(){
    print("Name: $name , price: $price");
  }
}

class Fabrics extends Shop {
  String? producer;

  @override
  void getInfo() {
    // TODO: implement getInfo
    super.getInfo();
    print("Producer: $producer");
  }

  @override
  void getData() {
    // TODO: implement getData
    super.getData();
    print("Enter producer:");
    this.producer = stdin.readLineSync()??"";
  }
}

class Yarns extends Shop{
  String? composition;
  int? meterPerSkein;

  @override
  void getData() {
    // TODO: implement getData
    super.getData();
    print("Enter composition:");
    this.composition = stdin.readLineSync()??"";
    print("Enter meter per skein:");
    this.meterPerSkein = int.parse(stdin.readLineSync()??"0");
  }

  @override
  void getInfo() {
    // TODO: implement getInfo
    super.getInfo();
    print("Composition: $composition , meter per skein: $meterPerSkein");
  }
}