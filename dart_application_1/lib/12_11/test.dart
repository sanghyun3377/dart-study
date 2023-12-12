// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

// 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
// 직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }

  String toJson() => json.encode(toMap());

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      map['name'] as String,
      map['age'] as int,
    );
  }

  factory Employee.fromJson(String source) =>
      Employee.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'leader': leader.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

  factory Department.fromMap(Map<String, dynamic> map) {
    return Department(
      map['name'] as String,
      Employee.fromMap(map['leader'] as Map<String, dynamic>),
    );
  }

  factory Department.fromJson(String source) =>
      Department.fromMap(json.decode(source) as Map<String, dynamic>);
}

void main() {
  Department hongGilDong = Department('총무부 리더', Employee('홍길동', 41));

  File companyFile = File('lib/12_11/company.txt');
  companyFile.writeAsStringSync(hongGilDong.toJson());
  print(companyFile.readAsStringSync());
  companyFile.toString();
  print(companyFile.readAsStringSync());
}
