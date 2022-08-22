

import 'package:active_loan/auth/domain/entity/user.dart';
import 'package:active_loan/di/injection.dart';

User getLoggedInUser() => locator.get<User>();