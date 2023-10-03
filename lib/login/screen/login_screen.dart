import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyect_b/login/providers/login_providers.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.25),
          const LogoAndTitle(), //height 0.3
          SizedBox(height: size.height * 0.05),
          const ButtonBox(),
          SizedBox(height: size.height * 0.05),
        ],
      ),
    );
  }
}

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.30,
      width: size.width * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            height: size.width * 0.4,
            width: size.width * 0.4,
            child: const Center(child: Text('Logo', style: TextStyle(color: Colors.white, fontSize: 20))),
          ),
          Text(
            'PROYECTO B',
            style: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class ButtonBox extends StatelessWidget {
  const ButtonBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.30,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
            width: size.width * 0.6,
            child: Text(
              'Bienvenidos',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 28, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: size.height * 0.04),
          EmailOption(),
          SizedBox(
            height: size.height * 0.08,
            child: Center(
              child: Text(
                'O iniciar sesión con',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 13, color: Colors.white),
              ),
            ),
          ),
          const SocialMediaButtons()
        ],
      ),
    );
  }
}

class EmailOption extends ConsumerWidget {
  const EmailOption({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        ref.read(isSelectTheEmailOption.notifier).update((state) => !state);
      },
      child: Container(
        height: size.height * 0.05,
        width: size.width * 0.85,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white),
        child: Center(
          child: Text(
            'Iniciar sesión con correo electronico',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 15, color: const Color(0xFF494848)),
          ),
        ),
      ),
    );
  }
}

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.08,
      width: size.width * 0.7,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              width: 45,
              height: 45,
              child: CircleAvatar(backgroundColor: Color(0xFF0B7DFD)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              width: 45,
              height: 45,
              child: CircleAvatar(backgroundColor: Color(0xFFFF695B)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              width: 45,
              height: 45,
              child: CircleAvatar(backgroundColor: Color(0xFF65AFF6)),
            ),
          ),
        ],
      ),
    );
  }
}
