import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static double spacing_size = 16.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('10034_alif Calculator'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.lightBlue[50],
          child: Column(
            children: <Widget>[
              Expanded(child: DisplaySection()),
              SizedBox(height: MyApp.spacing_size),
              ButtonSection(),
            ],
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
    return Container(color: Colors.red);
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: MyApp.spacing_size,
      crossAxisSpacing: MyApp.spacing_size,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.6,
          child: Tile(index: 0, onTap: () => print('Tapped tile 0 (1)')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.6,
          child: Tile(index: 0, onTap: () => print('Tapped tile 0 (2)')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.6,
          child: Tile(index: 0, onTap: () => print('Tapped tile 0 (3)')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.6,
          child: Tile(index: 0, onTap: () => print('Tapped tile 0 (4)')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: TextBtn(text: 'Ac', onTap: () => print('Tapped Ac')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: TextBtn(text: '⌫', onTap: () => print('Tapped back')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Tile(index: 0, onTap: () => print('Tapped tile 0 (5)')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 5,
          child: Tile(index: 0, onTap: () => print('Tapped tall tile 0')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Number(index: 7, onTap: () => print('Tapped 7')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Number(index: 8, onTap: () => print('Tapped 8')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Number(index: 9, onTap: () => print('Tapped 9')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Number(index: 4, onTap: () => print('Tapped 4')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Number(index: 5, onTap: () => print('Tapped 5')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Number(index: 6, onTap: () => print('Tapped 6')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Number(index: 1, onTap: () => print('Tapped 1')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Number(index: 2, onTap: () => print('Tapped 2')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: Number(index: 3, onTap: () => print('Tapped 3')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: Number(index: 0, onTap: () => print('Tapped 0')),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: TextBtn(text: '•', onTap: () => print('Tapped 0')),
        ),
      ],
    );
  }
}

class Tile extends StatelessWidget {
  final int index;
  final VoidCallback? onTap;
  const Tile({super.key, required this.index, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Text(
            '$index',
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}

class Number extends StatelessWidget {
  final int index;
  final VoidCallback? onTap;
  const Number({super.key, required this.index, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Text(
            '$index',
            style: const TextStyle(fontSize: 24, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}

class TextBtn extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const TextBtn({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Text(
            '$text',
            style: const TextStyle(fontSize: 24, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}
