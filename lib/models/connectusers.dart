class ConnectUsers {
  static List<ConnectUsers> ConnectUsersList = [];
  final String first_name, last_name, email, password;
  ConnectUsers({
    this.first_name="",
    this.last_name="",
    this.email="",
    this.password="",

  });

  factory ConnectUsers.fromJson(Map<String, dynamic> json) {
    return ConnectUsers(
      //slotId: json['slot'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      email: json['email'],
      password: json['password'],
      // imageURL: json['imageURL'],
    );
  }
}