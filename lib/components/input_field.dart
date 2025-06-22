import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;

  const InputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: Colors.blueGrey.shade700,
        width: 1.5,
      ),
    );

    return TextField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Enter amount in USD',
        hintStyle: TextStyle(color: Colors.grey.shade400),
        prefixIcon: const Icon(Icons.attach_money, color: Colors.white70),
        filled: true,
        fillColor: Colors.blueGrey.shade800,
        enabledBorder: border,
        focusedBorder: border,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
      ),
    );
  }
}
