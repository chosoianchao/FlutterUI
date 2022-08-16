import 'package:flutter/material.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  double result = 0;

  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset('images/calculator.png'),
            ),
            TextField(
              controller: _firstController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Nhập số A',
              ),
            ),
            TextField(
              controller: _secondController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Nhập số B',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Kết quả : $result',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    _sum();
                  },
                  child: const Text('+'),
                ),
                TextButton(
                  onPressed: () {
                    _minus();
                  },
                  child: const Text('-'),
                ),
                TextButton(
                  onPressed: () {
                    _multiplication();
                  },
                  child: const Text('x'),
                ),
                TextButton(
                  onPressed: () {
                    _divide();
                  },
                  child: const Text(':'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _sum() {
    setState(() {
      result = double.parse(_firstController.text) +
          double.parse(_secondController.text);
    });
  }

  void _minus() {
    setState(() {
      result = double.parse(_firstController.text) -
          double.parse(_secondController.text);
    });
  }

  void _multiplication() {
    setState(() {
      result = double.parse(_firstController.text) *
          double.parse(_secondController.text);
    });
  }

  void _divide() {
    setState(() {
      if (double.parse(_firstController.text) %
              double.parse(_secondController.text) ==
          0) {
        result = double.parse(_firstController.text) /
            double.parse(_secondController.text);
      } else {
        result = double.parse(_firstController.text) %
            double.parse(_secondController.text);
      }
    });
  }
}
