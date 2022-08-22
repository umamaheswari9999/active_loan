import 'package:dartz/dartz.dart';
import 'package:active_loan/features/data/constants/constants.dart';
import 'package:active_loan/shared/api_helper.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:active_loan/shared/locator.dart';
import 'package:active_loan/shared/logger.dart';
import 'package:active_loan/shared/network_utils.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckUserCredentialsUseCase {
  final ApiHelper apiHelper;

  CheckUserCredentialsUseCase(this.apiHelper);

  Future<Either<Failure, bool>> isUserCredentialsAreStillValid() async {
    try {
      final connected = await hasInternet();
      // validate credentials only when internet is available
      if (connected == false) return right(true);

      const message = 'could not validate user credentials';
      final user = getLoggedInUser();
      final url = '${Constants.baseDefaultApiUrl}/${Entities.user}?_where=username=\'${user.username}\'&_selectedProperties=id,name';
      final result = await apiHelper.get(url, message);
      if (result.isLeft()) return left(Failure.unAuthorized());
      return right(true);
    } catch (e, st) {
      logError(e, st);
    }
    return right(false);
  }
}
