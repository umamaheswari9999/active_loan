class AdUserdetails {
  final String? ldsClientmaster;
  final String? id;
  final String? name;
  final alternativePhone;
  final int? totalRows;

  const AdUserdetails(
      { this.ldsClientmaster, this.id,this.name,this.totalRows,required this.alternativePhone});

  factory AdUserdetails.fromJson(Map<String, dynamic> json) => AdUserdetails(
    ldsClientmaster: json["ldsClientmaster"],
    id:json['id'],
      name:json['name'],
      totalRows:json['totalRows'],
    alternativePhone: json['alternativePhone']
   );
}