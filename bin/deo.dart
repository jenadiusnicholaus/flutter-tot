// object oriented programming

//The concept of object oriented p

// inheritence
// encapsulations
// abstrations
// polymophism

class Animal {
  String? _name = 'Animal name';
  static String? _age = "12";

  void printName() {
    print("This is  an animal $_name");
  }
}

class Cow extends Animal {
  void printMyname() {
    print(_name);
    super.printName();
  }
}

class Dog extends Animal {
  printAge() {
    print(Animal._age);
  }
}

abstract class RemoteControler {
  void increaseVolume();
  void decreaseVolume();
  String? infor;
  bool get isValidInfoField => this.infor!.length < 9;

  set setinforvalue(String? value) {
    infor = value;
  }

  void showList() {
    print('printing my list');
  }
}

class TvRemoteController extends RemoteControler {
  int volume = 8;

  @override
  void decreaseVolume() {
    // TODO: implement decreaseVolume
  }

  @override
  void increaseVolume() {
    // TODO: implement increaseVolume
  }
}

class RadioRemoteController implements RemoteControler {
  @override
  void decreaseVolume() {
    // TODO: implement decreaseVolume
  }

  @override
  void increaseVolume() {
    // TODO: implement increaseVolume
  }

  @override
  void showList() {
    // TODO: implement showList
  }

  @override
  String? infor;

  @override
  // TODO: implement isValidInfoField
  bool get isValidInfoField => throw UnimplementedError();

  @override
  set setinforvalue(String? value) {
    // TODO: implement setinforvalue
  }
}

void main(List<String> arguments) {
  RemoteControler rc = TvRemoteController();
  rc.infor = "infor";
  rc.setinforvalue = 'This is the TV information part of the remote controller';

  if (rc.isValidInfoField) {
    print(rc.infor!.length);
    print('Infor field is invild');
  } else {
    print(rc.infor!.length);
    print('The field is valid');
  }
}
