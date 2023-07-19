import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInit {

  /// Initializations ...
  static Future<void> appInit() async {

    /// widgets binding ...
    WidgetsFlutterBinding.ensureInitialized();

    /// system status bar theme ...
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xFFEBEBEB),
    ));

  }
}