// Model for a DVSA test slot
class SlotModel {
  final String id;
  final DateTime dateTime;
  final String centreId;
  final bool isBooked;

  SlotModel({
    required this.id,
    required this.dateTime,
    required this.centreId,
    this.isBooked = false,
  });

  factory SlotModel.fromMap(Map<String, dynamic> map) {
    return SlotModel(
      id: map['id'],
      dateTime: DateTime.parse(map['dateTime']),
      centreId: map['centreId'],
      isBooked: map['isBooked'] ?? false,
    );
  }
}
