import 'package:flutter/material.dart';

class BrokenListPage extends StatelessWidget {
  const BrokenListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(200, (i) => i);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Otimizada'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Card(
              child: Column(
                children: [
                  Image.network(
                    'https://picsum.photos/300/200',
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, progress) {
                      if (progress == null) return child;

                      return const Padding(
                        padding: EdgeInsets.all(30),
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Item ${items[index]}'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}