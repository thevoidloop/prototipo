import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyect_b/login/providers/login_providers.dart';

class EmailOptionScreen extends StatelessWidget {
  const EmailOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInUp(
      child: Column(
        children: [
          const SpaceForExit(),
          Container(
            height: size.height * 0.6,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SpaceForExit extends ConsumerWidget {
  const SpaceForExit({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          ref.read(isSelectTheEmailOption.notifier).update((state) => false);
        },
        child: Container(height: size.height * 0.35));
  }
}
