class UserDetails {
  final String? name;
  final String? alternativePhone;
  final String? username;

  const UserDetails(
      {this.name, this.alternativePhone,this.username});

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
      name: json["name"],
      alternativePhone: json["alternativePhone"],
      username:json['username'],
  );
}
