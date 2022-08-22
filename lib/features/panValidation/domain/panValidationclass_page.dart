class Panvalidation
{
  final String? full_name;
  final String? status;
  const Panvalidation({this.full_name, this.status});
  factory Panvalidation.fromJson(Map<String, dynamic> json) => Panvalidation(
      full_name: json["full_name"],
      status: json["status"]);
}