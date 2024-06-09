class Box<T> {
  T? _value;

  void setValue(T value) {
    _value = value;
  }

  T? getValue() {
    return _value;
  }
}

void main() {
  var intT = Box<int>();
  intT.setValue(10);
  print('The intiger is : ${intT.getValue()}');
  var stringT = Box<String>();
  stringT.setValue('Hello, world!');
  print('This is string : ${stringT.getValue()}');
  var doubleT = Box<double>();
  doubleT.setValue(34.34);
  print("This is the double : ${doubleT.getValue()}");
}