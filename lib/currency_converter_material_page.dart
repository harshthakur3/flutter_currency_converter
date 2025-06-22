import 'package:flutter/material.dart';
import 'components/converted_value.dart';
import 'components/input_field.dart';
import 'components/convert_button.dart';
import 'utils/converter_logic.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      result = convertUsdToInr(textEditingController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2A38),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E2A38),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConvertedValueDisplay(result: result),
              const SizedBox(height: 40),
              InputField(controller: textEditingController),
              const SizedBox(height: 30),
              ConvertButton(onPressed: convert),
            ],
          ),
        ),
      ),
    );
  }
}
