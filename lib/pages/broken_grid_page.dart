import 'package:flutter/material.dart';

class BrokenGridPage extends StatelessWidget {
  const BrokenGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(200, (i) => i);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Otimizada'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://picsum.photos/300/200',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Item ${items[index]}'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}