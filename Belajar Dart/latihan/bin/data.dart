class User {
  User({required this.name, required this.pin});

  final String name;
  final int pin;
}

List<User> users = <User>[
  User(name: 'Rafli', pin: 1234),
  User(name: 'Rifki', pin: 123),
  User(name: 'Rilfi', pin: 12345)
];