// ignore_for_file: public_member_api_docs, sort_constructors_first
enum KeyType {
  padlock(1024),
  button(10000),
  dial(30000),
  finger(1000000);

  const KeyType(this.count);
  final int count;
}

class StrongBox<T> {
  T? _item;
  int opentry = 1;

  void put(T item) {
    _item = item;
  }

  T? get(KeyType key) {
    switch (key) {
      case KeyType.padlock:
        if (opentry < KeyType.padlock.count) {
          print('padlock(으)로 $opentry번째 시도 금고열기 실패');
          opentry++;
          return null;
        } else {
          if (_item != null) {
            print('$_item 획득');
            _item = null;
          } else {
            print('금고가 비었습니다');
          }
        }
        return _item;
      case KeyType.button:
        if (opentry < KeyType.button.count) {
          print('button(으)로 $opentry번째 시도 금고열기 실패');
          opentry++;
          return null;
        } else {
          if (_item != null) {
            print('$_item 획득');
            _item = null;
          } else {
            print('금고가 비었습니다');
          }
        }
        return _item;
      case KeyType.dial:
        if (opentry < KeyType.dial.count) {
          print('dial(으)로 $opentry번째 시도 금고열기 실패');
          opentry++;
          return null;
        } else {
          if (_item != null) {
            print('$_item 획득');
            _item = null;
          } else {
            print('금고가 비었습니다');
          }
        }
        return _item;
      case KeyType.finger:
        if (opentry < KeyType.finger.count) {
          print('finger(으)로 $opentry번째 시도 금고열기 실패');
          opentry++;
          return null;
        } else {
          if (_item != null) {
            print('$_item 획득');
            _item = null;
          } else {
            print('금고가 비었습니다');
          }
        }
        return _item;
    }
  }

  @override
  String toString() => '금고안에 들어있는 아이템 : $_item';
}

void main() {
  String i = '보석';
  StrongBox<String> myBox = StrongBox<String>();
  myBox.put(i);
  print(myBox);

  myBox.get(KeyType.padlock);
  myBox.get(KeyType.padlock);
  myBox.get(KeyType.padlock);
  print('...');
  myBox.opentry = 1023;
  myBox.get(KeyType.padlock);
  myBox.get(KeyType.padlock);
  myBox.get(KeyType.padlock);
}
