import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyect_b/login/layout/login_layout.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROYECT B',
      theme: ThemeData.light().copyWith(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const SafeArea(child: LoginLayout()),
    );
  }
}
