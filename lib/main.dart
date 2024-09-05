import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'features/auth_for_client/sign_up/presentation/views/client_password_view.dart';
import 'features/auth_for_client/sign_up/presentation/views/client_sign_up_view.dart';
import 'features/auth_for_merchants/sign_in/presentation/views/merchant_sign_in_view.dart';
import 'features/home/presentation/views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    tools: const [
      ...DevicePreview.defaultTools,
    ],
    builder: (context) => const Betak(),
  ));

  // runApp(const Betak());
}

class Betak extends StatelessWidget {
  const Betak({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make the status bar transparent
      statusBarIconBrightness:
          Brightness.dark, // For dark icons on the status bar
    ));
    return const MaterialApp(
      locale: Locale('ar', ''),
      debugShowCheckedModeBanner: false,
      // locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: HomeView(),
    );
  }
}
