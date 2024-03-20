import 'package:learning_api/models/user_id.dart';
import 'package:learning_api/models/user_dob.dart';
import 'package:learning_api/models/user_location.dart';
import 'package:learning_api/models/user_name.dart';
import 'package:learning_api/models/user_picture.dart';
import 'package:learning_api/models/user_registered.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserId id;
  final UserPicture picture;
  final UserRegistered registered;
  final UserLocation location;
  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.id,
    required this.picture,
    required this.registered,
    required this.location,
  });

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName.fromMap(e['name']);
    final dob = UserDob.fromMap(e['dob']);
    final registered = UserRegistered.fromMap(e['registered']);
    final id = UserId.fromMap(e['id']);
    final picture = UserPicture.fromMap(e['picture']);
    final location = UserLocation.fromMap(e['location']);

    return User(
      gender: e['gender'],
      email: e['email'],
      phone: e['phone'],
      cell: e['cell'],
      nat: e['nat'],
      name: name,
      dob: dob,
      registered: registered,
      id: id,
      picture: picture,
      location: location,
    );
  }
}
