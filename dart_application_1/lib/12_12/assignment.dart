import 'dart:math';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];
void main() {
// 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  quiz1() {
    List<String> traderName = [];
    for (var transaction in transactions) {
      if (transaction.year == 2011) {
        traderName.add(transaction.trader.name);
        traderName.sort();
      }
    }
    print(traderName);
  }

// 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  quiz2() {
    Set<String> setCity = {};
    for (var transaction in transactions) {
      setCity.add(transaction.trader.city);
    }
    print(setCity);
  }

// 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  quiz3() {
    List<String> cambridageTrader = [];
    for (var transaction in transactions) {
      if (transaction.trader.city == 'Cambridge') {
        cambridageTrader.add(transaction.trader.name);
      }
    }
    cambridageTrader.sort();
    print(cambridageTrader);
  }

// 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  quiz4() {
    List<String> traderName = [];
    for (var transaction in transactions) {
      traderName.add(transaction.trader.name);
    }
    traderName.sort;
    print(traderName);
  }

// 밀라노에 거래자가 있는가?
  quiz5() {
    bool milanTrader = false;
    for (var transaction in transactions) {
      if (transaction.trader.city == "Milan") {
        milanTrader = true;
      }
    }
    switch (milanTrader) {
      case true:
        print('있음');
        break;
      default:
        print('없음');
    }
  }

//  케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  quiz6() {
    List<int> cambridgeTraderValue = [];

    for (var transaction in transactions) {
      if (transaction.trader.city == "Cambridge") {
        cambridgeTraderValue.add(transaction.value);
      }
    }

    print(cambridgeTraderValue);
  }

// 전체 트랜잭션 중 최대값은 얼마인가?
  quiz7() {
    List<int> value = [0];
    var maxValue = value[0];
    for (var transaction in transactions) {
      value.add(transaction.value);
    }
    for (var i = 0; i < value.length; i++) {
      if (maxValue < value[i]) {
        maxValue = value[i];
      }
    }
    print(maxValue);
  }

// 전체 트랜잭션 중 최소값은 얼마인가?
  quiz8() {
    List<int> value = [];
    int minValue = transactions[0].value;

    for (var transaction in transactions) {
      value.add(transaction.value);
    }

    for (var i = 0; i < value.length; i++) {
      minValue = min(value[i], minValue);
    }
    print(minValue);
  }

  quiz1();
  quiz2();
  quiz3();
  quiz4();
  quiz5();
  quiz6();
  quiz7();
  quiz8();
}
