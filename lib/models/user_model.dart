// User model for Firestore and app state
class UserModel {
  final String uid;
  final String email;
  final String? displayName;
  final String? dvsaBookingRef;
  final String? theoryPassNumber;
  final String? licenseNumber;
  final List<String>? preferredCentres;
  final DateTime? preferredStartDate;
  final DateTime? preferredEndDate;
  final bool isSubscribed;

  UserModel({
    required this.uid,
    required this.email,
    this.displayName,
    this.dvsaBookingRef,
    this.theoryPassNumber,
    this.licenseNumber,
    this.preferredCentres,
    this.preferredStartDate,
    this.preferredEndDate,
    this.isSubscribed = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'dvsaBookingRef': dvsaBookingRef,
      'theoryPassNumber': theoryPassNumber,
      'licenseNumber': licenseNumber,
      'preferredCentres': preferredCentres,
      'preferredStartDate': preferredStartDate?.toIso8601String(),
      'preferredEndDate': preferredEndDate?.toIso8601String(),
      'isSubscribed': isSubscribed,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      displayName: map['displayName'],
      dvsaBookingRef: map['dvsaBookingRef'],
      theoryPassNumber: map['theoryPassNumber'],
      licenseNumber: map['licenseNumber'],
      preferredCentres: List<String>.from(map['preferredCentres'] ?? []),
      preferredStartDate: map['preferredStartDate'] != null ? DateTime.parse(map['preferredStartDate']) : null,
      preferredEndDate: map['preferredEndDate'] != null ? DateTime.parse(map['preferredEndDate']) : null,
      isSubscribed: map['isSubscribed'] ?? false,
    );
  }
}
