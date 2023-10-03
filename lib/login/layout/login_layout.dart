import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyect_b/login/providers/login_providers.dart';
import 'package:proyect_b/login/screen/email_option_screen.dart';
import 'package:proyect_b/login/screen/login_screen.dart';

class LoginLayout extends ConsumerWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEmailOptionSelected = ref.watch(isSelectTheEmailOption);
    return Scaffold(
      backgroundColor: const Color(0xFF252529),
      body: isEmailOptionSelected ? const EmailOptionScreen() : const LoginScreen(),
    );
  }
}
