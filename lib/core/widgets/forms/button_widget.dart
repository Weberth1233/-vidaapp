import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: const Color(0xFFDB3541)),
      onPressed: () {},
      child: const Text(
        'Cadastrar',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
