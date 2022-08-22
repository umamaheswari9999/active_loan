import 'dart:convert';
CurrentAddress currentAddressFromJson(String str) => CurrentAddress.fromJson(json.decode(str));
String currentAddressToJson(CurrentAddress data) => json.encode(data.toJson());
class CurrentAddress {
  CurrentAddress({
    required this.identifier,
    required this.ref,
    required this.id,
    required this.addressLine1,
    required this.addressLine2,
    required this.cityName,
    required this.postalCode,
    this.postalAdd,
    required this.country,
    required this.countryIdentifier,
    required this.region,
    required this.regionIdentifier,
  });
  String identifier;
  String ref;
  String id;
  String addressLine1;
  String addressLine2;
  String cityName;
  String postalCode;
  dynamic postalAdd;
  String country;
  String countryIdentifier;
  String region;
  String regionIdentifier;

  factory CurrentAddress.fromJson(Map<String, dynamic> json) => CurrentAddress(
    identifier: json["_identifier"],
    ref: json["\u0024ref"],
    id: json["id"],
    addressLine1: json["addressLine1"],
    addressLine2: json["addressLine2"],
    cityName: json["cityName"],
    postalCode: json["postalCode"],
    postalAdd: json["postalAdd"],
    country: json["country"],
    countryIdentifier: json["country\u0024_identifier"],
    region: json["region"],
    regionIdentifier: json["region\u0024_identifier"],
  );

  Map<String, dynamic> toJson() => {
    "_identifier": identifier,
    "\u0024ref": ref,
    "id": id,
    "addressLine1": addressLine1,
    "addressLine2": addressLine2,
    "cityName": cityName,
    "postalCode": postalCode,
    "postalAdd": postalAdd,
    "country": country,
    "country\u0024_identifier": countryIdentifier,
    "region": region,
    "region\u0024_identifier": regionIdentifier,
  };
}
