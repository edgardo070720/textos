import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textos/ui/pages/principal.dart';
import 'package:textos/ui/pages/textos/cajatexto.dart';
import 'package:textos/ui/pages/textos/focustexto.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/principal',
      routes: {
        '/principal': (context) => const Principal(),
        '/cajatexto': (context) => const CajaTexto(),
        '/cajatexto2': (context) => const CajaTextoFocus(),
      },
      // home: const Principal(),
    );
  }
}
