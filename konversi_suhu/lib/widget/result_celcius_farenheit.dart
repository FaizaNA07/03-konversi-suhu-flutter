import 'package:flutter/material.dart';

class ResultCelciusFahrenheit extends StatelessWidget {
  const ResultCelciusFahrenheit({
    Key? key,
    required double celcius,
    required double fahrenheit,
  })  : _celcius = celcius,
        _fahrenheit = fahrenheit,
        super(key: key);

  final double _celcius;
  final double _fahrenheit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text('Suhu dalam Celcius'),
            const SizedBox(height: 15),
            Text(
              '' + _celcius.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Text('Suhu dalam Fahrenheit'),
            const SizedBox(height: 15),
            Text(
              '' + _fahrenheit.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}