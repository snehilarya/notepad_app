import 'package:flutter/foundation.dart';

import 'user_preference.dart';

class User {
  String userId;
  String emailId;
  UserPreferences userPreferences;

  User({
    @required this.userId,
    @required this.emailId,
    this.userPreferences = null,
  });
}
