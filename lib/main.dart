import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'src/routes/page_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (_) => runApp(
      MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Health Monitoring App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xff2A2A2A,
          <int, Color>{
            50: Color(0xff2A2A2A),
            100: Color(0xff2A2A2A),
            200: Color(0xff2A2A2A),
            300: Color(0xff2A2A2A),
            400: Color(0xff2A2A2A),
            500: Color(0xff2A2A2A),
            600: Color(0xff2A2A2A),
            700: Color(0xff2A2A2A),
            800: Color(0xff2A2A2A),
            900: Color(0xff2A2A2A),
          },
        ),
      ),
      getPages: AppPage.pages,
    );
  }
}
