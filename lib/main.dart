import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('10034_alif Calculator'),
          backgroundColor: Colors.lightBlue,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                // Use flex to allocate 30% (3/10) to Display and 70% (7/10) to Buttons
                Expanded(flex: 3, child: const DisplaySection()),
                Expanded(flex: 7, child: const ButtonSection()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DisplaySection extends StatelessWidget {
  const DisplaySection({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.displayLarge ??
        const TextStyle(fontSize: 36);
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text('0', style: textStyle, textAlign: TextAlign.right),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      '7',
      '8',
      '9',
      '/',
      '4',
      '5',
      '6',
      '*',
      '1',
      '2',
      '3',
      '-',
      '0',
      '.',
      '=',
      '+',
    ];
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1.2,
      children: buttons.map((label) {
        return ElevatedButton(
          onPressed: () {},
          child: Text(label, style: const TextStyle(fontSize: 20)),
        );
      }).toList(),
    );
  }
}
