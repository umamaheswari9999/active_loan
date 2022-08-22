import 'dart:convert';

import 'package:active_loan/features/kycVerificationndDetails/domain/current_address.dart';
ClientMaster_Locations currentAddressFromJson(String str) => ClientMaster_Locations.fromJson(json.decode(str));
String currentAddressToJson(ClientMaster_Locations data) => json.encode(data.toJson());
class ClientMaster_Locations {
  ClientMaster_Locations({
    required this.currentAddress,

  });
  CurrentAddress currentAddress;



  factory ClientMaster_Locations.fromJson(Map<String, dynamic> json) => ClientMaster_Locations(
    currentAddress: json["currentAddress"],

  );

  Map<String, dynamic> toJson() => {
    "permanentAddress": currentAddress,


  };
}
