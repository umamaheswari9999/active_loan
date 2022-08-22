import 'package:active_loan/features/kycVerificationndDetails/repo/locations_Clientmaster/clientmaster_networkservice.dart';
import 'package:injectable/injectable.dart';

import '../../domain/clientmaster_locations.dart';


@injectable
class LocationsRepo{
  final ClientmasterLocationsfetch service;
  LocationsRepo({required this.service});

  Future<List<ClientMaster_Locations>>fetchlocationsofUserfromclientmastwer(String panno) async{
    var res =await service.fetchlocationsofUser(panno);
    return res;
  }
}