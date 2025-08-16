// Model for DVSA test centre
class TestCentreModel {
  final String id;
  final String name;
  final String address;

  TestCentreModel({
    required this.id,
    required this.name,
    required this.address,
  });

  factory TestCentreModel.fromMap(Map<String, dynamic> map) {
    return TestCentreModel(
      id: map['id'],
      name: map['name'],
      address: map['address'],
    );
  }
}
