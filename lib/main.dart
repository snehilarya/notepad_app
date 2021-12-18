import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/app_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppBindings.init();

  runApp(App());
}
