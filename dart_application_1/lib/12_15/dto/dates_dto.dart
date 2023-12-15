// ignore_for_file: public_member_api_docs, sort_constructors_first
class Dates {
  String? minimum;
  String? maximum;
  Dates({
    this.minimum,
    this.maximum,
  });

  factory Dates.fromJson(Map<String, dynamic> json) {
    return Dates(
      minimum: json['minimum'] != null ? json['minimum'] as String : null,
      maximum: json['maximum'] != null ? json['maximum'] as String : null,
    );
  }
}
