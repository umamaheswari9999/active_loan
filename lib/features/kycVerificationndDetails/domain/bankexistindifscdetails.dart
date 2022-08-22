class bankexistingifscDetails {
  final String inpifsccode;
  final String inpbankbranch;
  final String inpbanknameId;
  final String inpmicr;
  const bankexistingifscDetails(
      {required this.inpifsccode,required this.inpbankbranch,required this.inpbanknameId, required this.inpmicr});
  factory bankexistingifscDetails.fromJson(Map<String, dynamic> json) => bankexistingifscDetails(
    inpifsccode: json["inpifsccode"],
    inpbankbranch: json["inpbankbranch"],
    inpbanknameId:json['inpbanknameId'],
    inpmicr: json["inpmicr"],);
}
