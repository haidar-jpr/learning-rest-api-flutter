class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final UserLocationStreet street;
  final UserLocationCoordinates coordinates;
  final UserLocationTimeZone timezone;
  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.street,
    required this.coordinates,
    required this.timezone,
  });

  factory UserLocation.fromMap(Map<String, dynamic> json) {
    final street = UserLocationStreet.fromMap(json['street']);
    final coordinates = UserLocationCoordinates.fromMap(json['coordinates']);
    final timezone = UserLocationTimeZone.fromMap(json['timezone']);
    return UserLocation(
      city: json['location']['city'],
      state: json['location']['state'],
      country: json['location']['country'],
      postcode: json['location']['postcode'],
      street: street,
      coordinates: coordinates,
      timezone: timezone,
    );
  }
}

class UserLocationStreet {
  final int number;
  final String name;
  UserLocationStreet({
    required this.number,
    required this.name,
  });
  factory UserLocationStreet.fromMap(Map<String, dynamic> json) {
    return UserLocationStreet(
      number: json['location']['street']['number'],
      name: json['location']['street']['name'],
    );
  }
}

class UserLocationCoordinates {
  final String latitude;
  final String longitude;
  UserLocationCoordinates({
    required this.latitude,
    required this.longitude,
  });
  factory UserLocationCoordinates.fromMap(Map<String, dynamic> json) {
    return UserLocationCoordinates(
      latitude: json['location']['coordinates']['latitude'],
      longitude: json['location']['coordinates']['longitude'],
    );
  }
}

class UserLocationTimeZone {
  final String offset;
  final String description;
  UserLocationTimeZone({
    required this.offset,
    required this.description,
  });
  factory UserLocationTimeZone.fromMap(Map<String, dynamic> json) {
    return UserLocationTimeZone(
      offset: json['location']['timezone']['offset'],
      description: json['location']['timezone']['description'],
    );
  }
}
