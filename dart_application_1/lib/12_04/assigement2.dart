// ignore_for_file: public_member_api_docs, sort_constructors_first
// 대한민국의 도시 이름 모음 (순서 상관 없음)
// 10명 학생의 시험 점수
// 대한민국의 도시별 인구수 (순서 상관 없음)
Set<String> koreaCity = {'서울', '대구', '부산'};
Map<String, int> testScores = {
  '1번 학생': 90,
  '2번 학생': 100,
  '10번 학생': 20,
};

Map<String, int> population = {
  '서울': 140,
  '대구': 30,
  '부산': 70,
};

// 이름을 가지는 Person 클래스를 작성하시오. Person 은 반드시 이름을 포함해야 합니다.
// 이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
// List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.

class Person {
  String name;
  Person({
    required this.name,
  });
}

void main() {
  List personNameList = [];
  Person person1 = Person(name: '홍길동');
  Person person2 = Person(name: '한석봉');

  personNameList.add(person1.name);
  personNameList.add(person2.name);

  print(personNameList);
}
