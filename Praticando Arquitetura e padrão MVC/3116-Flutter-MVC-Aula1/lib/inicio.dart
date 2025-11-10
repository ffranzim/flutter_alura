import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
              width: 200,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
