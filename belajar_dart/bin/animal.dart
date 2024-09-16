class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0.0;

  Animal(this._name, this._age, this._weight);

  set name(String value) => _name = value;
  set age(int value) => _age = value;
  set weight(double value) => _weight = value;

  String get name => _name;
  int get age => _age;
  double get weight => _weight;

  // Methods
  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$_name is sleeping.');
  }

  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }
}
