class User {
  User({required this.name, required this.pin, this.balance = 0});

  final String name;
  final int pin;
  int balance;
}

List<User> users = <User>[
  User(name: 'Rafli', pin: 1234, balance: 100000),
  User(name: 'Rifki', pin: 123),
  User(name: 'Rilfi', pin: 12345, balance: 200000)
];