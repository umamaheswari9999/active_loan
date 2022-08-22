import 'package:dartz/dartz.dart';
import '../../../../shared/failure.dart';
import '../entity/emi_charges.dart';
import '../entity/other_charges.dart';
abstract class EmiChargesRepo {
  Future<Either<Failure, List<EmiCharges>>> fetchEmis(String id);
  Future<Either<Failure, List<OtherCharges>>> FetchOtherCharges(String id) ;
}
