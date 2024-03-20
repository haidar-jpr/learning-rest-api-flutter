class UserRegistered {
  final DateTime date;
  final int age;
  UserRegistered({
    required this.date,
    required this.age,
  });
  factory UserRegistered.fromMap(Map<String, dynamic> json) {
    final date = json['registered']['date'];
    return UserRegistered(
      date: DateTime.parse(date),
      age: json['registered']['age'],
    );
  }
}
