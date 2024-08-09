// lib/portfolio_screen.dart
import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  // Including the 'key' parameter
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Investment Portfolio'),
      ),
      body: const PortfolioList(),
    );
  }
}

class PortfolioList extends StatelessWidget {
  // Including the 'key' parameter
  const PortfolioList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Explicitly defining the type of each investment item
    final List<Map<String, dynamic>> investments = [
      {'name': 'Stock A', 'amount': 1000},
      {'name': 'Stock B', 'amount': 500},
      {'name': 'Stock C', 'amount': 1200},
    ];

    return ListView.builder(
      itemCount: investments.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(investments[index]['name'] as String),
          subtitle: Text('Amount: \$${investments[index]['amount']}'),
        );
      },
    );
  }
}
