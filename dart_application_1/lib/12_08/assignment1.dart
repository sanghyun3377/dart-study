// ignore_for_file: public_member_api_docs, sort_constructors_first
class StrongBox<T> {
  T? _item;

  void put(T item) {
    _item = item;
  }

  T? get() {
    _item = null;
    return _item;
  }

  @override
  String toString() => 'StrongBox안에 있는것: $_item';
}

void main() {
  int i = 1;
  StrongBox<int> myBox = StrongBox<int>();
  myBox.put(i);
  print(myBox);

  myBox.get();
  print(myBox);
}
